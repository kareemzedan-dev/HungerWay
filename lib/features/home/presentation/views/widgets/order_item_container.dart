import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/features/home/presentation/model/order_item_model.dart';
import 'package:hungerway/features/home/presentation/views/widgets/build_delivery_info_row.dart';
import 'package:hungerway/features/home/presentation/views/widgets/category_name_and_price.dart';
import 'package:hungerway/features/home/presentation/views/widgets/category_tag_list_view.dart';
import 'package:hungerway/features/home/presentation/views/widgets/rating_section.dart';

class OrderItemContainer extends StatelessWidget {
    OrderItemContainer({super.key , required this.orderItemModel});
  OrderItemModel orderItemModel ;

  @override
  Widget build(BuildContext context) {
    double containerHeight = 350;

    return Card(
      elevation: 10,
      shadowColor: Colors.transparent,
      child: Container(
        height: containerHeight,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.withOpacity(.3), width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: containerHeight / 1.9,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    child: Image.asset(
                      orderItemModel.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ratingSection(rate: orderItemModel.rating.toString()),
              ],
            ),
      
            SizedBox(height: 10),
            categoryNameAndPrice(name: orderItemModel.name, price: orderItemModel.price),
            SizedBox(height: 20),
            buildDeliveryInfoRow(time: orderItemModel.time!),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 40,
      
                child: categoryTagListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }

 
}
