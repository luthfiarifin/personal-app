import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_app/config/di/injection.dart';
import 'package:personal_app/core/presentation/constant/gap_constant.dart';

import '../cubit/home_cubit.dart';
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
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '@luthfiarifin',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
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
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetHomeLoading) {
          return const CircularProgressIndicator();
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Test123',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                height: 5000,
                width: double.infinity,
              ),
            ],
          ),
        );
      },
    );
  }
}
