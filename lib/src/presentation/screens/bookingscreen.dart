import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/widgets/custom_tab_bar.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  List<String> mainTabBar = ['Route', 'Flight', 'CheckOut'];
  int selectedIndex = 0;
  List<String> routeOptions = ['One Way', 'Roundtrip'];
  int selectedIndex1 = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.32;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            height: height,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(26.0, 45, 26, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios),
                        color: Colors.green,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/bg1.jpg'),
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
          Positioned(
              left: 0,
              right: 0,
              top: height / 1.62,
              bottom: 0,
              child: const CustomTabBar()),
        ],
      ),
    );
  }
}
