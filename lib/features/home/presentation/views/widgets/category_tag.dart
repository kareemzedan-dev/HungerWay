import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
Widget categoryTag({
  required String text,
  bool isSearch = false,
  bool isCuisine = false,
  String? image,
}) {
  return Container(
    decoration: BoxDecoration(
      color: ColorsManager.shadow,
      borderRadius: BorderRadius.circular(20),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    child: Row(
      mainAxisSize: MainAxisSize.min, 
      children: [
        if (isSearch && !isCuisine)
          Icon(Icons.search, color: ColorsManager.textSecondary, size: 20),
        if (isCuisine && image != null)
          ClipOval(
            child: Image.asset(
              image,
              height: 20,
              width: 20,
              fit: BoxFit.cover,
            ),
          ),
        if (isSearch || isCuisine) SizedBox(width: 5),
        Text(
          text,
          style: AppTextStyles.regular14.copyWith(
            color: ColorsManager.textSecondary,
          ),
        ),
      ],
    ),
  );
}
