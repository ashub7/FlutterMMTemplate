import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(
    replaceInRouteName: 'Screen,Route'
)
class AppRouterModule extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [];
}