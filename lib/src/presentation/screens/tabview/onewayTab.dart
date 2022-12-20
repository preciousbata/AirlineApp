import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../widgets/passenger_counter.dart';

class OneWayTab extends StatefulWidget {
  const OneWayTab({Key? key}) : super(key: key);

  @override
  State<OneWayTab> createState() => _OneWayTabState();
}

class _OneWayTabState extends State<OneWayTab> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.fromLTRB(8, 30, 8, 12),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10),
                    ),
                    hintText: 'DEPARTURE',
                    prefixIcon: const Icon(
                      Icons.flight_takeoff_rounded,
                      color: Colors.deepOrange,
                    ),
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.deepOrange)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.fromLTRB(8.0, 8, 8, 12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'ARRIVAL',
                  prefixIcon: const Icon(
                    Icons.flight_land_rounded,
                    color: Colors.deepOrange,
                  ),
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.deepOrange),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: dateInput,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.deepOrange,
                  ),
                  hintText: 'PICK A DATE',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.deepOrange),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                readOnly: true,
                onTap: () async {
                  final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2023));
                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('yyyy-MM-dd')
                            .format(pickedDate);
                    setState(() {
                      dateInput.text = formattedDate;
                    });
                  }
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.fromLTRB(8.0, 8, 8, 12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors.deepOrange)),
                  hintText: 'FLIGHT CLASS',
                  prefixIcon: const Icon(
                    Icons.flight_class_rounded,
                    color: Colors.deepOrange,
                  ),
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.deepOrange),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    'PASSENGER',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: const [
                  PassengerCounter(
                    options: 'CHILD',
                  ),
                  PassengerCounter(
                    options: 'ADULT',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            ElevatedButton(
              onPressed: null,
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(
                          Colors.deepOrange)),
              child: const Text(
                'Check Flight',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
