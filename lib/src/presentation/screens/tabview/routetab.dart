import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/screens/tabview/returnFlightTab.dart';

import '../../../../constant.dart';
import 'onewayTab.dart';

class RouteTab extends StatefulWidget {
  const RouteTab({Key? key}) : super(key: key);

  @override
  _RouteTabState createState() => _RouteTabState();
}

class _RouteTabState extends State<RouteTab>
    with TickerProviderStateMixin {
  late final _tabController =
      TabController(length: 2, vsync: this);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(
                    left: 70, right: 70),
                controller: _tabController,
                labelColor: greenColor,
                labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                unselectedLabelColor: lightTextColor,
                indicatorColor: greenColor,
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                ),
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: const [
                  Tab(
                    text: 'One Way',
                  ),
                  Tab(
                    text: 'Return',
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
                  ReturnFlightTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
