import 'package:flutter/material.dart';
import 'package:ibomair/constant.dart';
import 'package:ibomair/src/presentation/components/ticket_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.32;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  height: height,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          scale: 1.3,
                          opacity: 0.4,
                          alignment: Alignment(-0.4, -1.15),
                          image: AssetImage('assets/images/Airplane.png')),
                      color: Colors.white,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 8, 20, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.notifications_active,
                                color: greenColor,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: height / 1.87,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.grey.shade200,
                    ),
                    child: ListView(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, top: 9, right: 20),
                          child: SizedBox(
                            height: 30,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'RECENT FLIGHTS',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: greenColor),
                                ),
                                Text(
                                  'more >',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: greenColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 280,
                          width: double.infinity,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.only(top: 10),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return const SizedBox(
                                height: 430,
                                width: 320,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.0),
                                  child: TicketView(
                                    isRecentFlight: true,
                                    isDeals: false,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: SizedBox(
                            height: 30,
                            width: double.infinity,
                            child: Text(
                              'DEALS 🔥',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: greenColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 280,
                          width: double.infinity,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.only(top: 10),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return const SizedBox(
                                height: 430,
                                width: 320,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.0),
                                  child: TicketView(
                                    isRecentFlight: false,
                                    isDeals: true,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: SizedBox(
                            height: 30,
                            width: double.infinity,
                            child: Text(
                              'SPOTLIGHT 📸',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: greenColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 280,
                          width: double.infinity,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.only(top: 10),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return const SizedBox(
                                height: 430,
                                width: 320,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.0),
                                  child: TicketView(
                                    isRecentFlight: false,
                                    isDeals: false,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 92,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
