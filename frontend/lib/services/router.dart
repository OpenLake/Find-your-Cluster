import 'package:find_your_cluster/constants/routing_constants.dart';
import 'package:find_your_cluster/screens/onboard_user.dart';
import 'package:find_your_cluster/screens/user_preferences.dart';
import 'package:find_your_cluster/screens/welcome.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case welcomeScreenRoute:
      return MaterialPageRoute(builder: (context) => const WelcomeScreen());
    case onBoardingRoute:
      return MaterialPageRoute(builder: (context) => const OnboardUser());
    case userPreferencesRoute:
      return MaterialPageRoute(builder: (context) => const UserPreferences());
    default:
      return MaterialPageRoute(builder: (context) => const WelcomeScreen());
  }
}
