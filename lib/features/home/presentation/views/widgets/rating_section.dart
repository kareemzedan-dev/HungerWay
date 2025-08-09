  import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/core/utils/colors_manger.dart';

Padding ratingSection({required String rate}) {
    return Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IntrinsicWidth(
                    child: Container(
                      height: 30,
                      width: 60,

                      decoration: BoxDecoration(
                        color: ColorsManager.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                             rate,
                              style: AppTextStyles.bold16.copyWith(
                                color: ColorsManager.primary,
                              ),
                            ),
                          ),

                          Image.asset(
                            Assets.assetsImagesStar2530067,
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: ColorsManager.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            );
  }


