import 'package:errplus5_task/widgets/drawer/app_drawer.dart';
import 'package:flutter/material.dart';

import '../../presentation/screens/home/views/home_screen.dart';
import '../../presentation/screens/login/login_screen.dart';
import '../../presentation/screens/nav_bar_screen.dart';
import '../../utils/strings/routes_names.dart';



class RouterApp {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    try {
      var args = settings.arguments;

      switch (settings.name) {
        case RouteName.homeScreen:
          return MaterialPageRoute(builder: (_) => const HomeScreen());
        case RouteName.loginScreen:
          return MaterialPageRoute(builder: (_) =>  LoginScreen());
        case RouteName.navScreen:
          return MaterialPageRoute(builder: (_) =>  NavBarScreen());
        case RouteName.drawerScreen:
          return MaterialPageRoute(builder: (_) =>  AppDrawer());


        default:
          return _errorRoute();
      }
    } catch (e) {
      return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('خطأ'),
        ),
        body: const Center(
          child: Text('نعتذر حدث خطأ , الرجاء اعادة المحاولة'),
        ),
      );
    });
  }

  static navigateWithAnimate(context, Widget to,
          {double x = 1, double y = 0}) =>
      Navigator.push(context, _animateRouteBuilder(to, x: x, y: y));

  static _animateRouteBuilder(Widget to,
          {double x = 1, double y = 0, bool fullscreenDialog = false}) =>
      PageRouteBuilder(
          pageBuilder: (_, __, ___) => to,
          opaque: false,
          fullscreenDialog: fullscreenDialog,
          transitionsBuilder: (context, animation, animationTime, child) {
            final tween = Tween<Offset>(
              begin: Offset(x, y),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.ease));
            final tween2 = Tween<double>(
              begin: 0,
              end: 1,
            );
            return SlideTransition(
              position: animation.drive(tween),
              child: FadeTransition(
                opacity: animation.drive(tween2),
                child: child,
              ),
            );
          });
}
