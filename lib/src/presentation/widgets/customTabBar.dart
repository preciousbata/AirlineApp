import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../screens/tabview/checkoutTab.dart';
import '../screens/tabview/flightTab.dart';
import '../screens/tabview/routetab.dart';
import '../screens/tabview/seatTab.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  late final _tabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            labelPadding:
                const EdgeInsets.only(left: 34, right: 45),
            controller: _tabController,
            labelColor: greenColor,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            unselectedLabelColor: lightTextColor,
            indicatorColor: greenColor,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
            ),
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Tab(
                text: 'Route',
              ),
              Tab(
                text: 'Flight',
              ),
              Tab(
                text: 'CheckOut',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 572,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: const [
              RouteTab(),
              FlightTab(),
              SeatTab(),
              CheckoutTab(),
            ],
          ),
        ),
      ],
    );
  }
}
