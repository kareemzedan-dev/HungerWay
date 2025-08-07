import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/core/widgets/custom_button.dart';
import 'package:hungerway/core/widgets/custom_text_form_field.dart';
import 'package:hungerway/core/widgets/or_divider.dart';
import 'package:hungerway/features/auth/presentation/views/widgets/social_login_options.dart';
 
Padding registerFormBody(
  BuildContext context,
 
  VoidCallback onSignUpPressed,
) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Name", style: AppTextStyles.bold16),
          const SizedBox(height: 10),
          CustomTextFormField(
   //         textEditingController: nameController,
            isEmailValidator: false,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'هذا الحقل مطلوب';
              }
              return null;
            },
            iconShow: false,
            keyboardType: TextInputType.text,
            
            hintText: "Enter your name",
          ),
          const SizedBox(height: 20),
          Text("Email", style: AppTextStyles.bold16),
          const SizedBox(height: 10),
          CustomTextFormField(
          //  textEditingController: emailController,
            isEmailValidator: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'هذا الحقل مطلوب';
              }
              return null;
            },
            iconShow: false,
            keyboardType: TextInputType.emailAddress,
            hintText: "Enter your email",
          ),
          const SizedBox(height: 20),
          Text("Password", style: AppTextStyles.bold16),
          const SizedBox(height: 10),
          CustomTextFormField(
         //   textEditingController: passwordController,
            isEmailValidator: false,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'هذا الحقل مطلوب';
              }
              return null;
            },
            iconShow: true,
            keyboardType: TextInputType.visiblePassword,
            hintText: "Enter your Password",
          ),
          const SizedBox(height: 30),
          CustomBotton(title: "Sign Up", ontap: onSignUpPressed),
          const SizedBox(height: 30),
          OrDivider(),
          const SizedBox(height: 30),
          SocialLoginOptions(),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?", style: AppTextStyles.semiBold16),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Text(" Log in", style: AppTextStyles.semiBold16.copyWith(color: ColorsManager.primary)),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
