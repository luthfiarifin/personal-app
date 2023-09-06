import 'package:auto_route/auto_route.dart';

import '../../features/home/presentation/page/home_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          path: '/',
        ),
      ];
}
