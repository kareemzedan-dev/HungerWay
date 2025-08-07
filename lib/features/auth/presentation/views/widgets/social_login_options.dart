
import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/features/auth/presentation/views/widgets/social_login_button.dart';
 

class SocialLoginOptions extends StatelessWidget {
  const SocialLoginOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialLoginButton(
          label: "Login with Google",
          iconPath: Assets.assetsImagesIcGoogle,
          onPressed: () {
            print("Google login");
          },
        ),
        SizedBox(height: 16),
        SocialLoginButton(
          label: "Login with Apple",
          iconPath: Assets.assetsImagesIcApple,
          onPressed: () {
            print("Apple login");
          },
        ),
        SizedBox(height: 16),
        SocialLoginButton(
          label:  "Login with Facebook",
          iconPath: Assets.assetsImagesIcFacebook,
          onPressed: () {
            print("Facebook login");
          },
        ),
      ],
    );
  }
}
