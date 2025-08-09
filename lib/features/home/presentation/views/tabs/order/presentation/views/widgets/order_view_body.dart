import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/features/home/presentation/views/widgets/order_item_container_list_view.dart';

class OrderViewBody extends StatefulWidget {
  const OrderViewBody({super.key});

  @override
  State<OrderViewBody> createState() => _OrderViewBodyState();
}

final LatLng _center = const LatLng(30.0444, 31.2357);

void _onMapCreated(GoogleMapController controller) {
  controller.animateCamera(CameraUpdate.newLatLng(_center));
}

class _OrderViewBodyState extends State<OrderViewBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(target: _center, zoom: 14.0),
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
        ),

        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 10),
                      Text(
                        "Search",
                        style: AppTextStyles.bold16.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
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
                const SizedBox(height: 20),
                OrderItemContainerListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
