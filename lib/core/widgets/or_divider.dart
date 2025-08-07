import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
 

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children:   [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.grey
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.0),
          child: Text("Or", style: AppTextStyles.semiBold16.copyWith(color: Color(0XFF0C0D0D)),),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
             color: Colors.grey
          ),
        ),
      ],
    );
  }
}