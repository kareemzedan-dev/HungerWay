import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hungerway/features/home/presentation/views/tabs/order/presentation/views/widgets/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: OrderViewBody()
    );
  }
}
 