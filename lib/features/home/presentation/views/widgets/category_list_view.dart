import 'package:flutter/widgets.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/features/home/presentation/model/category_model.dart';
import 'package:hungerway/features/home/presentation/views/widgets/category_item_container.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  int selectedIndex = 0; 

  List<CategoryModel> categories = [
    CategoryModel(id: 0, name: 'Burger', image: Assets.assetsImagesBurgerIc),
    CategoryModel(id: 1, name: 'Pizza', image: Assets.assetsImagesPizzaPizzaFilledWithTomatoesSalamiOlives),
    CategoryModel(id: 2, name: 'Drinks', image: Assets.assetsImagesGlassesDeskWithFruityDrinks),
    CategoryModel(id: 3, name: 'Pasta', image: Assets.assetsImagesPennePastaTomatoSauceWithChickenTomatoesWoodenTable),
    CategoryModel(id: 4, name: 'Salad', image: Assets.assetsImagesDietarySaladWithTomatoesFetaLettuceSpinachPineNuts),
    CategoryModel(id: 5, name: 'Desserts', image: Assets.assetsImagesDeliciousDessertTable),
    CategoryModel(id: 6, name: 'Sandwich', image: Assets.assetsImagesSideViewShawarmaWithFriedPotatoesBoardCookware),
    CategoryModel(id: 7, name: 'Sushi', image: Assets.assetsImagesSeafoodSushiDishWithDetailsSimpleBlackBackground),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItemContainer(
            categoryItem: categories[index],
            isSelected: selectedIndex == index,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
