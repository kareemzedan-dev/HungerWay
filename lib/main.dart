import 'package:flutter/material.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/core/utils/routes_manager.dart';

void main(){
  runApp(HungerWay());
}

class HungerWay extends StatelessWidget {
  const HungerWay({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
            theme: ThemeData(
        fontFamily: "Cairo",
        primaryColor: ColorsManager.primary,
      ),
    
 
      onGenerateRoute: (settings) => RoutesManager.onGenerateRoute(settings),
      initialRoute: RoutesManager.splashRoute,

      
    );
  }
}