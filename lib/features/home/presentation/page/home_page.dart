import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_app/config/di/injection.dart';
import 'package:personal_app/core/presentation/constant/gap_constant.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';
import 'package:personal_app/core/presentation/extensions/responsive_extension.dart';
import 'package:personal_app/features/home/presentation/layout/article_layout.dart';
import 'package:responsive_framework/max_width_box.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../core/presentation/constant/size_constant.dart';
import '../../data/model/home_response_model.dart';
import '../cubit/home_cubit.dart';
import '../layout/about_me_layout.dart';
import '../layout/bottom_layout.dart';
import '../layout/contact_layout.dart';
import '../layout/header_layout.dart';
import '../layout/projects_layout.dart';
import '../layout/services_layout.dart';
import '../layout/skills_layout.dart';
import '../widget/dark_mode_widget.dart';
import '../widget/toolbar_text_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> {
  final ItemScrollController _itemScrollController = ItemScrollController();

  HomeResponseModel? _data;

  @override
  void initState() {
    _initData();
    super.initState();
  }

  void _initData() {
    context.read<HomeCubit>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
      builder: (context, __, ___) {
        return Scaffold(
          appBar: _appBar(context),
          body: _body(),
          endDrawer: _drawer(context),
        );
      },
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      titleSpacing: 32,
      titleTextStyle: Theme.of(context).textTheme.titleSmall,
      scrolledUnderElevation: 4,
      shadowColor: Colors.grey.shade50.withOpacity(0.2),
      title: _appBarContent(context),
    );
  }

  Widget _appBarContent(BuildContext context) {
    return Center(
      child: MaxWidthBox(
        maxWidth: MaxSizeConstant.maxWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '@luthfiarifin',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
            ),
            if (context.isDisplayLargeThanTablet) _toolbarItems(),
          ],
        ),
      ),
    );
  }

  Widget _toolbarItems() {
    return Row(
      children: [
        ..._generateToolbarItem()
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(left: 24),
                child: ToolbarTextWidget(text: e.text, onTap: e.onTap),
              ),
            )
            .toList(),
        GapConstant.w24,
        const DarkModeWidget(),
      ],
    );
  }

  Widget? _drawer(BuildContext context) {
    if (context.isDisplayLargeThanTablet) return null;

    return _HomeDrawer(
      items: _generateToolbarItem(),
    );
  }

  Widget _body() {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is GetHomeLoaded) {
          _data = state.data;
        }
      },
      builder: (context, state) {
        if (state is GetHomeLoaded) {
          return ScrollablePositionedList.builder(
            itemCount: _bodyItems.length,
            itemBuilder: (context, index) => _bodyItems[index],
            itemScrollController: _itemScrollController,
          );
        }

        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }

  List<Widget> get _bodyItems => [
        HomeHeaderLayout(header: _data!.header),
        AboutMeLayout(aboutMe: _data!.aboutMe),
        ServicesLayout(services: _data!.services),
        SkillsLayout(skills: _data!.skills),
        ProjectsLayout(projects: _data!.projects),
        ArticleLayout(article: _data!.article),
        ContactLayout(contact: _data!.contact),
        BottomLayout(bottom: _data!.bottom),
      ];

  List<_ToolbarItem> _generateToolbarItem() {
    return [
      _ToolbarItem(text: 'About', onTap: () => _changeToIndex(1)),
      _ToolbarItem(text: 'Services', onTap: () => _changeToIndex(2)),
      _ToolbarItem(text: 'Skills', onTap: () => _changeToIndex(3)),
      _ToolbarItem(text: 'Projects', onTap: () => _changeToIndex(4)),
      _ToolbarItem(text: 'Blog', onTap: () => _changeToIndex(5)),
      _ToolbarItem(text: 'Contact', onTap: () => _changeToIndex(6)),
    ];
  }

  void _changeToIndex(int i) {
    _itemScrollController.scrollTo(
      index: i,
      duration: const Duration(milliseconds: 300),
    );
  }
}

class _HomeDrawer extends StatelessWidget {
  final List<_ToolbarItem> items;

  const _HomeDrawer({
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          GapConstant.h16,
          ...items
              .map(
                (e) => ListTile(
                  title: Text(e.text),
                  onTap: () => _onItemClicked(e, context),
                ),
              )
              .toList(),
          GapConstant.h8,
          const Divider(
            thickness: 0.4,
          ),
          GapConstant.h8,
          _switchTheme(context),
        ],
      ),
    );
  }

  void _onItemClicked(_ToolbarItem e, BuildContext context) {
    Scaffold.of(context).closeEndDrawer();
    e.onTap?.call();
  }

  Widget _switchTheme(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Switch theme',
            style: context.bodyLarge,
          ),
          const DarkModeWidget(),
        ],
      ),
      onTap: () {
        context.setDarkOrLight();
      },
    );
  }
}

class _ToolbarItem {
  final String text;
  final GestureTapCallback? onTap;

  _ToolbarItem({
    required this.text,
    this.onTap,
  });
}
