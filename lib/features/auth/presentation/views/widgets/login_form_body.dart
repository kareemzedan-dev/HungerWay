import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/core/utils/routes_manager.dart';
import 'package:hungerway/core/widgets/custom_button.dart';
import 'package:hungerway/core/widgets/custom_text_form_field.dart';
import 'package:hungerway/core/widgets/or_divider.dart';
import 'package:hungerway/core/widgets/remember_me_section.dart';
import 'package:hungerway/features/auth/presentation/views/widgets/social_login_options.dart';
 

Padding SigninFormBody(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text("Email", style: AppTextStyles.bold16),
          SizedBox(height: 10),
          CustomTextFormField(
            isEmailValidator: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'هذا الحقل مطلوب';
              }
              return null;
            },
            onSaved: (value) {},
            iconShow: false,
            keyboardType: TextInputType.emailAddress,
            hintText: "Enter your email",
          ),
          SizedBox(height: 20),
          Text("Password", style: AppTextStyles.bold16),
          SizedBox(height: 10),
          CustomTextFormField(
            isEmailValidator: false,

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'هذا الحقل مطلوب';
              }
              return null;
            },
            onSaved: (value) {},
            iconShow: true,
            keyboardType: TextInputType.visiblePassword,
            hintText: "Enter your Password",
          ),
          SizedBox(height: 15),
          RememberMeSection( ),
          SizedBox(height: 25),

          CustomBotton(title: "Sign In", ontap: () {

            Navigator.pushNamed(context, RoutesManager.home);
          }),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Forget Password? ", style: AppTextStyles.regular16),
              Text(
                "Reset Password",
                style: AppTextStyles.bold16.copyWith(
                  color: ColorsManager.primary,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),

          OrDivider(),
          SizedBox(height: 30),
          SocialLoginOptions(),
          SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? ", style: AppTextStyles.regular16),
              GestureDetector(
                onTap: () {
               Navigator.pushNamed(context, RoutesManager.register);  
                },
                child: Text(
                  "Sign Up",
                  style: AppTextStyles.bold16.copyWith(
                    color: ColorsManager.primary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
