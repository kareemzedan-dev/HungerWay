import 'package:flutter/widgets.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/features/home/presentation/views/widgets/category_item_container.dart';
import 'package:hungerway/features/home/presentation/views/widgets/category_list_view.dart';
import 'package:hungerway/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:hungerway/features/home/presentation/views/widgets/banar_container.dart';
import 'package:hungerway/features/home/presentation/views/widgets/order_item_container.dart';
import 'package:hungerway/features/home/presentation/views/widgets/banner_section.dart';
import 'package:hungerway/features/home/presentation/views/widgets/order_item_container_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              HomeViewAppBar(),
              SizedBox(height: 20),
              Center(child:bannerSection()),
              SizedBox(height: 40),
              Text("Select by category", style: AppTextStyles.bold20),
              SizedBox(height: 20),
              CategoryListView(),
              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fastest Near You", style: AppTextStyles.bold20),
                  Text(
                    "See All",
                    style: AppTextStyles.bold16.copyWith(
                      color: ColorsManager.primary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            OrderItemContainerListView(),
              SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
