import 'package:auto_route/auto_route.dart';
import 'package:weather_app_flutter/features/weather/presentation/screens/home_page.dart';
import 'package:weather_app_flutter/features/cities/presentation/screens/select_city_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/',
          page: HomeRoute.page,
        ),
        AutoRoute(
          page: SelectCityRoute.page,
        ),
      ];
}
