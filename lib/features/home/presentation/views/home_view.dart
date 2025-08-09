import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungerway/core/utils/app_text_styles.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/core/utils/colors_manger.dart';
import 'package:hungerway/features/home/presentation/views/tabs/chart/presentation/views/chart_view.dart';
import 'package:hungerway/features/home/presentation/views/tabs/order/presentation/views/order_view.dart';
import 'package:hungerway/features/home/presentation/views/tabs/profile/presentation/views/profile_view.dart';
import 'package:hungerway/features/home/presentation/views/tabs/search/presentation/views/search_view.dart';
import 'package:hungerway/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

int _selectedIndex = 0;
List<Widget> _pages = [
  HomeViewBody(),
  OrderView(),
  SearchView(),
  ChartView(),
  ProfileView(),
];

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
    );
  }

  BottomNavigationBar CustomBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: AppTextStyles.bold14,
      unselectedLabelStyle: AppTextStyles.regular14,
      elevation: 20,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color:
                  _selectedIndex == 0
                      ? ColorsManager.primary
                      : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              Assets.assetsImagesHome5973580,
              height: 24,
              width: 24,
              color:
                  _selectedIndex == 0
                      ? ColorsManager.white
                      : ColorsManager.black,
            ),
          ),
          label: "Home",
        ),

        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color:
                  _selectedIndex == 1
                      ? ColorsManager.primary
                      : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              Assets.assetsImagesShoppingBag9002748,
              height: 24,
              width: 24,
              color:
                  _selectedIndex == 1
                      ? ColorsManager.white
                      : ColorsManager.black,
            ),
          ),
          label: "Order",
        ),

        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color:
                  _selectedIndex == 2
                      ? ColorsManager.primary
                      : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              Assets.assetsImagesSearch5973882,
              height: 24,
              width: 24,
              color:
                  _selectedIndex == 2
                      ? ColorsManager.white
                      : ColorsManager.black,
            ),              
          ),
          label: "Search",
        ),

        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color:
                  _selectedIndex == 3
                      ? ColorsManager.primary
                      : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            child:  Icon(
              Icons.favorite_border_outlined,
              size: 24,
              color:
                  _selectedIndex == 3
                      ? ColorsManager.white
                      : ColorsManager.black,
            ),
          ),
          label: "Chart",
        ),

        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color:
                  _selectedIndex == 4
                      ? ColorsManager.primary
                      : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              Assets.assetsImagesUser8370837,
              height: 24,
              width: 24,
              color:
                  _selectedIndex == 4
                      ? ColorsManager.white
                      : ColorsManager.black,
            ),
          ),
          label: "Profile", 
        ) 

        
      ],
    );
  }
}
