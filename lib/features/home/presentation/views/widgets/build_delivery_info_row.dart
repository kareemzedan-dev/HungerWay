  
  import 'package:flutter/widgets.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/core/utils/colors_manger.dart';

  Padding buildDeliveryInfoRow({required String time }) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Image.asset(
                Assets.assetsImagesDeliveryMan5095076,
                height: 20,
                width: 20,
                color: ColorsManager.primary,
              ),
              SizedBox(width: 10),
              Text(
                "Free Delivery",
                style: AppTextStyles.bold16.copyWith(
                  color: ColorsManager.textSecondary,
                ),
              ),
              SizedBox(width: 50),
              Image.asset(
                Assets.assetsImagesClock14152764,
                height: 20,
                width: 20,
                color: ColorsManager.primary,
              ),
              SizedBox(width: 10),
              Text(
               time,
                style: AppTextStyles.bold16.copyWith(
                  color: ColorsManager.textSecondary,
                ),
              ),
            ],
          ),
        );
  }

 
 