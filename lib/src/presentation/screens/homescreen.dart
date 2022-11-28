import 'package:flutter/material.dart';

import 'bookingscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Welcome',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.green,
                                fontWeight:
                                    FontWeight.bold),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'My Flights',
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
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BookingScreen(),
            ),
          ),
          label: const Text(
            'Book Flight',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.deepOrange),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndFloat,
      ),
    );
  }
}
