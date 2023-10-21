import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/widgets/ticket_view.dart';

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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 2, 20, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
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
                            'Flight Schedule',
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
                  top: height / 1.87,
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.deepOrange,
                    ),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                                6,
                                (index) => const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3),
                                      child: TicketView(),
                                    )).toList(),
                          ),
                        ]),
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
