import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../widgets/passenger_counter.dart';

class RoundTripFlightTab extends StatefulWidget {
  const RoundTripFlightTab({Key? key}) : super(key: key);

  @override
  State<RoundTripFlightTab> createState() => _RoundTripFlightTabState();
}

class _RoundTripFlightTabState extends State<RoundTripFlightTab> {
  TextEditingController dateInput = TextEditingController();
  DateTimeRange dateTimeRange =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());

  @override
  void initState() {
    dateInput.text =
        '${DateFormat('yyyy-MM-dd').format(dateTimeRange.start)} - ${DateFormat('yyyy-MM-dd').format(dateTimeRange.end)}';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: AssetImage('assets/images/bg3.jpeg'),
              fit: BoxFit.cover,
              opacity: 0.4),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'DEPARTURE',
                    prefixIcon: const Icon(
                      Icons.flight_takeoff_rounded,
                      color: Colors.deepOrange,
                    ),
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.deepOrange)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.deepOrange)),
                  hintText: 'ARRIVAL',
                  prefixIcon: const Icon(
                    Icons.flight_land_rounded,
                    color: Colors.deepOrange,
                  ),
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.deepOrange),
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
                      fontWeight: FontWeight.w300, color: Colors.deepOrange),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                readOnly: true,
                onTap: () async {
                  final pickedDate = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2023));
                  if (pickedDate != null) {
                    String initialDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate.start);
                    String finalDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate.end);
                    setState(() {
                      dateInput.text = '$initialDate - $finalDate';
                    });
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.deepOrange)),
                  hintText: 'FLIGHT CLASS',
                  prefixIcon: const Icon(
                    Icons.flight_class_rounded,
                    color: Colors.deepOrange,
                  ),
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.deepOrange),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 89.0),
        child: Row(
          children: const [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: FloatingActionButton.extended(
                  onPressed: null,
                  backgroundColor: Colors.deepOrange,
                  label: Text(
                    'Check Flight',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
