import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/features/auth/presentation/views/widgets/login_view_body.dart';
 

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: ColorsManager.primary,
      body: LoginViewBody(),
    );
  }
}