import 'package:flutter/material.dart';
import 'package:weak_2_mini_ui/core/routing/routes.dart';
import 'package:weak_2_mini_ui/features/checkout/presentation/views/upgrade_plan_view.dart';
import 'package:weak_2_mini_ui/features/home/presentation/views/details_movie_view.dart';
import 'package:weak_2_mini_ui/features/home/presentation/views/home_view.dart';
import 'package:weak_2_mini_ui/features/main/presentation/views/main_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.detailsMovieRoute:
        return MaterialPageRoute(builder: (_) => const DetailsMovieView());
      case Routes.upgradePlanRoute:
        return MaterialPageRoute(builder: (_) => const UpgradePlanView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      default:
        return null;
    }
  }
}
