import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/colors_manger.dart';

class RememberMeSection extends StatefulWidget {
  const RememberMeSection({super.key});

  @override
  State<RememberMeSection> createState() => _RememberMeSectionState();
}

bool? isChecked = false;

class _RememberMeSectionState extends State<RememberMeSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked!;
            });
          },
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: isChecked! ? ColorsManager.primary : Colors.transparent,
              border: Border.all(color: ColorsManager.primary, width: 2.0),
              borderRadius: BorderRadius.circular(4),
            ),
            child:
                isChecked!
                    ? Center(
                      child: Icon(Icons.done, color: Colors.white, size: 16),
                    )
                    : null,
          ),
        ),
        SizedBox(width: 10),
        Text("Remember me", style: AppTextStyles.bold16),
      ],
    );
  }
}
