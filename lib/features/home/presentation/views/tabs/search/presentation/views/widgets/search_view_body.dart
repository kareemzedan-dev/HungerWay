import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/features/home/presentation/views/tabs/search/presentation/views/widgets/cuisines_tags_list_view.dart';
import 'package:hungerway/features/home/presentation/views/tabs/search/presentation/views/widgets/search_tags_section.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20),
                ),
           child: TextField(
  textAlignVertical: TextAlignVertical.center, // يخلي الكتابة في النص
  decoration: InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 0), // يضبط المسافة
    prefixIcon: Icon(Icons.search, color: Colors.grey),
    hintText: 'Search Stores, Dishes, Cuisines',
    hintStyle: AppTextStyles.bold16.copyWith(color: Colors.grey),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
  ),
),

              ),
            ),
            SizedBox(height: 40),
            Text("Top Searches", style: AppTextStyles.bold20),
            SizedBox(height: 20),
            SearchTagsSection(),
            SizedBox(height: 40),
            Text("Cuisines", style: AppTextStyles.bold20),
            SizedBox(height: 20),
            CuisinesTagsListView()
          ],
        ),
      ),
    );
  }
}
