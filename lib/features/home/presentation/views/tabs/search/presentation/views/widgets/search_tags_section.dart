import 'package:flutter/material.dart';
import 'package:hungerway/features/home/presentation/views/widgets/category_tag.dart';

class SearchTagsSection extends StatelessWidget {
    SearchTagsSection({super.key});
  List<String> tags = ["Coffee", "Burger", "Pizza", "Biryani", "Ice Cream", "Pasta", "Noodles", "Sandwich",];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      child: Wrap(
        spacing: 15, 
        runSpacing: 19,  
        children: List.generate(
          tags.length,
          (index) => categoryTag(text:tags[index],isSearch: true),
        ),
      ),
    );
  }
}
