import 'package:flutter/material.dart';
import 'package:test/core/routing/routes.dart';
import 'package:test/home_page.dart';
import 'package:test/product_cubit/product_cubit.dart';
import 'package:test/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ProductCubit()..fetchProducts(),
            child: const HomePage(),
          );
        });

      case Routes.splashRoute:
        return MaterialPageRoute(builder: (context) {
          return const SplashScreen();
        });

      default:
        return null;
    }
  }
}
