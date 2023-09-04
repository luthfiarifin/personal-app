import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_app/config/di/injection.dart';
import 'package:personal_app/core/presentation/constant/gap_constant.dart';
import 'package:personal_app/features/home/presentation/layout/experiences_layout.dart';

import '../../data/model/home_response_model.dart';
import '../cubit/home_cubit.dart';
import '../layout/about_me_layout.dart';
import '../layout/header_layout.dart';
import '../layout/projects_layout.dart';
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
        );
      },
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      titleTextStyle: Theme.of(context).textTheme.titleSmall,
      titleSpacing: 320,
      scrolledUnderElevation: 4,
      shadowColor: Colors.grey.shade50.withOpacity(0.2),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '@luthfiarifin',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
          ),
          Row(
            children: [
              ToolbarTextWidget(text: 'About', onTap: () {}),
              GapConstant.w24,
              ToolbarTextWidget(text: 'About', onTap: () {}),
              GapConstant.w24,
              ToolbarTextWidget(text: 'About', onTap: () {}),
              GapConstant.w24,
              ToolbarTextWidget(text: 'About', onTap: () {}),
              GapConstant.w48,
              const DarkModeWidget(),
            ],
          ),
        ],
      ),
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
          return ListView(
            children: [
              HomeHeaderLayout(header: _data!.header),
              AboutMeLayout(aboutMe: _data!.aboutMe),
              SkillsLayout(skills: _data!.skills),
              ExperiencesLayout(experiences: _data!.experiences),
              ProjectsLayout(projects: _data!.projects),
            ],
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
