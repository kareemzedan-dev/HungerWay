import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/features/home/presentation/model/order_item_model.dart';
import 'package:hungerway/features/home/presentation/views/widgets/order_item_container.dart';

class OrderItemContainerListView extends StatelessWidget {
  OrderItemContainerListView({super.key});
  List<OrderItemModel> orderItems = [
    OrderItemModel(
      image: Assets.assetsImagesPizzaPizzaFilledWithTomatoesSalamiOlives,
      name: "Pizza1",
      price: "\$20.60 ",
      time: "20-30 min",
      rating: 4.5,
    ),
    OrderItemModel(
      image: Assets.assetsImagesPizzaPizzaFilledWithTomatoesSalamiOlives,
      name: "Pizza2",
      price: "\$21.60 ",
      time: "10-20 min",
      rating: 4.9,
    ),
    OrderItemModel(
      image: Assets.assetsImagesPizzaPizzaFilledWithTomatoesSalamiOlives,
      name: "Pizza3",
      price: "\$21.60 ",
      time: "10-20 min",
      rating: 4.9,
    ),
    OrderItemModel(
      image: Assets.assetsImagesPizzaPizzaFilledWithTomatoesSalamiOlives,
      name: "Pizza4",
      price: "\$21.60 ",
      time: "10-20 min",
      rating: 4.9,
    ),
    OrderItemModel(
      image: Assets.assetsImagesPizzaPizzaFilledWithTomatoesSalamiOlives,
      name: "Pizza5",
      price: "\$21.60 ",
      time: "10-20 min",
      rating: 4.9,
    ),
    OrderItemModel(
      image: Assets.assetsImagesPizzaPizzaFilledWithTomatoesSalamiOlives,
      name: "Pizza6",
      price: "\$21.60 ",
      time: "10-20 min",
      rating: 4.9,
    ),
    OrderItemModel(
      image: Assets.assetsImagesPizzaPizzaFilledWithTomatoesSalamiOlives,
      name: "Pizza7",
      price: "\$21.60 ",
      time: "10-20 min",
      rating: 4.9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: orderItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: OrderItemContainer(orderItemModel: orderItems[index]),
          );
        },
      ),
    );
  }
}
