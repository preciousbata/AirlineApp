import 'package:flutter/material.dart';

import '../widgets/customTabBar.dart';
import '../widgets/body.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() =>
      _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  List<String> mainTabBar = ['Route', 'Flight', 'CheckOut'];
  int selectedIndex = 0;
  List<String> routeOptions = ['One Way', 'Roundtrip'];
  int selectedIndex1 = 0;
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height * 0.32;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              height: height,
              left: 0,
              right: 0,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () =>
                                Navigator.pop(context),
                            icon: const Icon(
                                Icons.arrow_back_ios),
                            color: Colors.green,
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Book Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: height / 1.62,
              bottom: 0,
              child: const Body(
                widget: SingleChildScrollView(
                    child: CustomTabBar()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
