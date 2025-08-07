import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/features/features/onboarding/presentation/views/widgets/onboarding_page1.dart';
import 'package:hungerway/features/features/onboarding/presentation/views/widgets/onboarding_page2.dart';

import 'package:video_player/video_player.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/onboarding2.mp4")
      ..initialize().then((_) {
        setState(() {});
        _controller.setLooping(true);
        _controller.setVolume(0.0);
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (value) {
        setState(() {
          _currentPage = value;
        });
        print(_currentPage);
      },

      children: [
        OnboaringPage1(
          controller: _controller,  
          currentPage: _currentPage,
          text: "Delicious Meals\nDelivered Fast\nTo Your Doorstep",
        ),
        OnboardingPageWithBackImage(
          currentPage: _currentPage,
          text: "Order from Top Restaurants\nWith Just a Few Taps",

          image: Assets.assetsImagesOnboarding2,
        ),
        OnboardingPageWithBackImage(
          currentPage: _currentPage,
          text: "Track Your Order Live\nStay Updated Every Minute",

          image: Assets.assetsImagesOnboarding3,
        ),
      ],
    );
  }
}
