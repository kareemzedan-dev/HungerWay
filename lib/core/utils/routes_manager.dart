import 'package:flutter/material.dart';
import 'package:hungerway/features/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:hungerway/features/features/splash/presentation/views/splash_view.dart';
 

class RoutesManager {
  static const String splashRoute = '/';
  static const String onboarding ="onboarding";
  static const String Signin = "signin";
  static const String signup = "signup";
  static const String home = "home";

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
        case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
 
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }

  
   
}