import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: 16, right: 16, top: 16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'QUO',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(20),
                          border: Border.all(width: 2.5),
                          color: Colors.deepOrange),
                    ),
                    Expanded(
                      child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints
                                    constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                mainAxisSize:
                                    MainAxisSize.max,
                                children: List.generate(
                                  (constraints.constrainWidth() /
                                          6)
                                      .floor(),
                                  (index) => const SizedBox(
                                    width: 3,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(
                                                color: Colors
                                                    .deepOrange)),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: const Icon(
                              Icons.local_airport_rounded,
                              color: Colors.deepOrange,
                            ),
                          ),
                        )
                      ]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(20),
                          border: Border.all(width: 2.5),
                          color: Colors.deepOrange),
                    ),
                    const Spacer(),
                    const Text('ABJ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'UYO',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      '45 MINS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        'ABUJA',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),


          // show bottom part of the ticket
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.white),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.only(
                                      topRight:
                                          Radius.circular(
                                              10),
                                      bottomRight:
                                          Radius.circular(
                                              10)),
                              color: Colors.deepOrange)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                              mainAxisSize:
                                  MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() /
                                          8)
                                      .floor(),
                                  (index) => const SizedBox(
                                        width: 5,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration:
                                              BoxDecoration(
                                                  color: Colors
                                                      .deepOrange),
                                        ),
                                      )),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(10),
                                bottomLeft:
                                    Radius.circular(10)),
                            color: Colors.deepOrange),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '1/05/2023',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.w600),
                          ),
                          Text(
                            'Departure Date',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '08:00 AM',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.w600),
                          ),
                          Text(
                            'Departure Time',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.end,
                        children: const [
                          Text(
                            '23/12/2023',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.w600),
                          ),
                          Text(
                            'Return Date',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
