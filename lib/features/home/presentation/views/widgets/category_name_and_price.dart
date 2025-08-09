  
    import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
  Padding categoryNameAndPrice({required String name  ,required String price}) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: AppTextStyles.bold20),
              Text(
               price,
                style: AppTextStyles.bold20.copyWith(
                  color: ColorsManager.primary,
                ),
              ),
            ],
          ),
        );
  }
