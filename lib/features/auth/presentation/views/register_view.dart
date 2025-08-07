import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/features/auth/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      
      backgroundColor: ColorsManager.primary,
      body: RegisterViewBody(),
    );
  }
}