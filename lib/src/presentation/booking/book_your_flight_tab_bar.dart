import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/components/tabview/select_seat_tab.dart';

import '../../../constant.dart';
import '../components/tabview/checkout_tab_view.dart';
import '../components/tabview/flight_tab_view.dart';
import '../components/tabview/route_tab_view.dart';

class FlightBookingTab extends StatefulWidget {
  const FlightBookingTab({Key? key}) : super(key: key);

  @override
  _FlightBookingTabState createState() => _FlightBookingTabState();
}

class _FlightBookingTabState extends State<FlightBookingTab>
    with TickerProviderStateMixin {
  late final _tabController = TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            controller: _tabController,
            labelColor: greenColor,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            unselectedLabelColor: lightTextColor,
            indicatorColor: greenColor,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
            ),
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Tab(
                text: 'Route',
              ),
              Tab(
                text: 'Flight',
              ),
              Tab(
                text: 'Seat',
              ),
              Tab(
                text: 'CheckOut',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 699,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: const [
              RouteTab(),
              FlightTab(),
              SelectSeatTab(),
              CheckoutTab(),
            ],
          ),
        ),
      ],
    );
  }
}
