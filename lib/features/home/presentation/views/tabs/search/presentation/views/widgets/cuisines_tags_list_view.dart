import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/features/home/presentation/views/widgets/category_tag.dart';

class CuisinesTagsListView extends StatelessWidget {
  CuisinesTagsListView({super.key});
  List<String> images = [
    Assets.assetsImagesBurgerIc,
    Assets.assetsImagesPizzaPizzaFilledWithTomatoesSalamiOlives,
    Assets.assetsImagesDeliciousDessertTable,
    Assets.assetsImagesPennePastaTomatoSauceWithChickenTomatoesWoodenTable,
    Assets.assetsImagesChickenSkewersWithSlicesApplesChili,
  ];

  List<String> tags = [
 
    "Burger",
    "Pizza",
    "Ice Cream",
    "Pasta",
    "Sandwich",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      child: Wrap(
        spacing: 15,
        runSpacing: 19,
        children: List.generate(
          images.length,
          (index) => categoryTag(
            image: images[index],
            isCuisine: true,
            text: tags[index],
          ),
        ),
      ),
    );
  }
}
