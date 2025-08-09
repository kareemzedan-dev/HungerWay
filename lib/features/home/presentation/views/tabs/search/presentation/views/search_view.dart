import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/features/home/presentation/views/tabs/search/presentation/views/widgets/search_view_body.dart';
import 'package:hungerway/features/home/presentation/views/widgets/circle_icon_button.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title:   Text('Search',style:AppTextStyles.bold20 ,),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:   CircularIconButton(image: Assets.assetsImagesShoppingCart),
        )],
      ),
      backgroundColor: Colors.white,
      body: SearchViewBody(),
    );
  }
}