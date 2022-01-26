import 'package:flutter/material.dart';
import 'package:flutter_bloc_concepts/features/feature_1_settings/presentation/screens/settings_screen.dart';
import 'package:flutter_bloc_concepts/features/feature_2_conectivity/presentation/screens/internet_connection_screen.dart';
import 'package:flutter_bloc_concepts/features/feature_3_counter/presentation/screens/home_screen.dart';
import 'package:flutter_bloc_concepts/features/feature_3_counter/presentation/screens/second_screen.dart';
import 'package:flutter_bloc_concepts/features/feature_3_counter/presentation/screens/third_screen.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case MyHomePage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'MyHomePage'),
          builder: (context) => const MyHomePage(),
        );

      case SecondPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'SecondPage'),
          builder: (context) => const SecondPage(),
        );

      case ThirddPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'ThirddPage'),
          builder: (context) => const ThirddPage(),
        );

      case SettingsScreen.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'SettingsScreen'),
          builder: (context) => const SettingsScreen(),
        );

      case InternetConnectionTestScreen.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'InternetConnectionTestScreen'),
          builder: (context) => const InternetConnectionTestScreen(),
        );

      default:
        return null;
    }
  }
}
