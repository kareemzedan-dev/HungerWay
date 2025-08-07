import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/assets_manager.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Image.asset(Assets.assetsImagesHungerWay)
    ],);
  }
}
