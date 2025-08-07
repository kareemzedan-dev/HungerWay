import 'package:flutter/material.dart';
import 'package:hungerway/features/auth/presentation/views/login-view.dart';
import 'package:hungerway/features/auth/presentation/views/register_view.dart';
import 'package:hungerway/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:hungerway/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:hungerway/features/splash/presentation/views/splash_view.dart';
 

class RoutesManager {
  static const String splashRoute = '/';
  static const String onboarding ="onboarding";
  static const String login = "login";
  static const String register = "register";
  static const String home = "home";

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
        case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
        case login:
        return MaterialPageRoute(builder: (_) =>   LoginView());
        case register:
        return MaterialPageRoute(builder: (_) => const RegisterView());
 
 
        
 
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }

  
   
}