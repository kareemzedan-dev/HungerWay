import 'package:flutter/material.dart';
import 'package:hungerway/features/features/onboarding/presentation/views/widgets/bottom_gradient_overlay.dart';
import 'package:hungerway/features/features/onboarding/presentation/views/widgets/onboarding_brand_section.dart';
import 'package:hungerway/features/features/onboarding/presentation/views/widgets/onboarding_header.dart';

import 'package:video_player/video_player.dart';

Stack OnboaringPage1({
  required VideoPlayerController controller,
  required int currentPage,
  required String? text,
}) {
  return Stack(
    children: [
      // خلفية الفيديو
      SizedBox.expand(
        child:
            controller.value.isInitialized
                ? FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: controller.value.size.width,
                    height: controller.value.size.height,
                    child: VideoPlayer(controller),
                  ),
                )
                : Container(color: Colors.black),
      ),

      OnboardingHeader(
        containerColor: Colors.black.withOpacity(0.3),
        currentPage: currentPage,
      ),

      OnboardingBrandSection(text: text!),
      BottomGradientOverlay(),
    ],
  );
}
