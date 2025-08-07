import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/colors_manger.dart';

class OnboardingIndicator extends StatelessWidget {
  final int index;
  final int currentIndex;

  const OnboardingIndicator({
    super.key,
    required this.index,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    bool isActive = index <= currentIndex;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        color:
            currentIndex == 1
                ? isActive
                    ? Colors.white
                    : ColorsManager.primary
                : isActive
                ? ColorsManager.primary
                : Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
