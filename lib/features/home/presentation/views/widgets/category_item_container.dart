import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/features/home/presentation/model/category_model.dart';
class CategoryItemContainer extends StatelessWidget {
  final CategoryModel categoryItem;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryItemContainer({
    super.key,
    required this.categoryItem,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.primary : ColorsManager.shadow,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: Image.asset(
                categoryItem.image!,
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              categoryItem.name!,
              style: AppTextStyles.bold16.copyWith(
                color: isSelected ? ColorsManager.white : ColorsManager.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
