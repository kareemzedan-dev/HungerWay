  import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/colors_manger.dart';

Column LocationDisplay() {
    return Column(
        children: [
          Text(
            "Location",
            style: AppTextStyles.bold16.copyWith(color: Colors.grey),
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: ColorsManager.primary, size: 18),
              Text("New York , USA", style: AppTextStyles.bold16),
            ],
          ),
        ],
      );
  }
