import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/features/auth/presentation/views/widgets/login_form_body.dart';
 

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: SigninFormBody(context),
          ),
        ),

        Positioned(
          top: 60,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Welcome Back!",
                style: AppTextStyles.bold24.copyWith(color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                "Glad to see you again! Please sign in to continue.",
                style: AppTextStyles.regular16.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  } }