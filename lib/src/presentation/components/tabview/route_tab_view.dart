import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/components/tabview/round_trip_tab_view.dart';

import '../../../../constant.dart';
import 'oneway_tab_view.dart';

class RouteTab extends StatefulWidget {
  const RouteTab({Key? key}) : super(key: key);

  @override
  _RouteTabState createState() => _RouteTabState();
}

class _RouteTabState extends State<RouteTab> with TickerProviderStateMixin {
  late final _tabController = TabController(length: 2, vsync: this);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              labelColor: greenColor,
              labelStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              unselectedLabelColor: lightTextColor,
              indicatorColor: greenColor,
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
              isScrollable: false,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: const [
                Tab(
                  text: 'One Way',
                ),
                Tab(
                  text: 'Round Trip',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 700,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: const [
                OneWayTab(),
                RoundTripFlightTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
