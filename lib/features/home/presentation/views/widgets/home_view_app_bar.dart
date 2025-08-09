import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/features/home/presentation/views/widgets/circle_icon_button.dart';
import 'package:hungerway/features/home/presentation/views/widgets/location_display.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircularIconButton(image: Assets.assetsImagesMenuIc),
        LocationDisplay(),

        CircularIconButton(image: Assets.assetsImagesShoppingCart),
      ],
    );
  }

 

}
