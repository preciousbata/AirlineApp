import 'package:flutter/material.dart';

class CheckOutDetails extends StatelessWidget {
  const CheckOutDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
            image: AssetImage('assets/images/bg3.jpeg'),
            fit: BoxFit.cover,
            opacity: 0.4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'QUO',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2.5),
                          color: Colors.deepOrange),
                    ),
                    Expanded(
                      child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => const SizedBox(
                                    width: 3,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange)),
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
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2.5),
                          color: Colors.deepOrange),
                    ),
                    const Spacer(),
                    const Text('ABJ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'UYO',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
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
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        'ABUJA',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 100,
                      child: Text(
                        '1/05/2023',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      '08:00 AM',
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
                        '23/12/2023',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Departure Date',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      'Departure Time',
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
                        'Return Date',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Precious',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        '001',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Passenger',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Passport',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Air Force 1',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      '001',
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
                        'Presidential',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Flight No',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      'Seat Number',
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
                        'Flight Class',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 85,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(10)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepOrange)),
                      child: const Text(
                        'Book',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(10)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepOrange)),
                      child: const Text(
                        'Pay Now',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
