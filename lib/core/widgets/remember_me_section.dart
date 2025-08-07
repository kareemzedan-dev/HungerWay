  import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
 

Row RememberMeSection() {
    return Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: ColorsManager.primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("Remember me", style: AppTextStyles.bold16),
                  ],
                );
  }