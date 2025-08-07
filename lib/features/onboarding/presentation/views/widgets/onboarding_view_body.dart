import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/features/onboarding/cubit/onboarding_cubit.dart';
import 'package:hungerway/features/onboarding/cubit/onboarding_states.dart';
import 'package:hungerway/features/onboarding/presentation/views/widgets/onboarding_page1.dart';
import 'package:hungerway/features/onboarding/presentation/views/widgets/onboarding_page2.dart';

import 'package:video_player/video_player.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  OnboardingCubit onboardingCubit = OnboardingCubit();

  @override
  void initState() {
    super.initState();
    onboardingCubit.controller =
        onboardingCubit.videoPlayerController
          ..initialize().then((_) {
            setState(() {});
            onboardingCubit.controller.setLooping(true);
            onboardingCubit.controller.setVolume(0.0);
            onboardingCubit.controller.play();
          });
  }

  @override
  void dispose() {
    onboardingCubit.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingStates>(
      bloc: onboardingCubit,

      builder: (context, state) {
        return PageView(
          controller: onboardingCubit.pageController,
          onPageChanged: onboardingCubit.changePage,
          children: [
            OnboaringPage1(
              controller: onboardingCubit.controller,
              currentPage: onboardingCubit.currentPage,
              text: "Delicious Meals\nDelivered Fast\nTo Your Doorstep",
            ),
            OnboardingPageWithBackImage(
              currentPage: onboardingCubit.currentPage,
              text: "Order from Top Restaurants\nWith Just a Few Taps",

              image: Assets.assetsImagesOnboarding2,
            ),
            OnboardingPageWithBackImage(
              currentPage: onboardingCubit.currentPage,
              text: "Track Your Order Live\nStay Updated Every Minute",

              image: Assets.assetsImagesOnboarding3,
            ),
          ],
        );
      },
    );
  }
}
