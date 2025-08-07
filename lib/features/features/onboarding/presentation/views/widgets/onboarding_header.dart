import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/core/utils/routes_manager.dart';
import 'package:hungerway/features/features/onboarding/presentation/views/widgets/onboarding_indicator.dart';
 

class OnboardingHeader extends StatelessWidget {
  OnboardingHeader({
    super.key,
    required this.containerColor,
    required this.currentPage,
  });
  Color? containerColor;
  int currentPage;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: containerColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Indicators
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      3,
                      (index) => OnboardingIndicator(
                        index: index,
                        currentIndex: currentPage,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          Assets.assetsImagesHungerWay,
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "Hunger Way",
                      style: AppTextStyles.bold20.copyWith(
                        color: ColorsManager.white,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        if (currentPage != 2) {
                          Navigator.pushReplacementNamed(context, RoutesManager.Signin);

                        } else {
                          Navigator.pushNamed(context, RoutesManager.Signin);
                        }

                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              currentPage != 2 ? "Skip" : "Let's Go",
                              style: AppTextStyles.bold20.copyWith(
                                color: ColorsManager.white,
                              ),
                            ),
                            if (currentPage == 2)
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: ColorsManager.white,
                                size: 16,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
