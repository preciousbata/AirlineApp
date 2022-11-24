import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReturnFlightTab extends StatefulWidget {
  const ReturnFlightTab({Key? key}) : super(key: key);

  @override
  State<ReturnFlightTab> createState() =>
      _ReturnFlightTabState();
}

class _ReturnFlightTabState extends State<ReturnFlightTab> {
  TextEditingController dateInput = TextEditingController();
  DateTimeRange dateTimeRange = DateTimeRange(
      start: DateTime.now(), end: DateTime.now());

  @override
  void initState() {
    dateInput.text =
        '${DateFormat('yyyy-MM-dd').format(dateTimeRange.start)} - ${DateFormat('yyyy-MM-dd').format(dateTimeRange.end)}';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.fromLTRB(8, 45, 8, 20),
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
                      fontWeight: FontWeight.w300,
                      color: Colors.deepOrange)),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.fromLTRB(8.0, 8, 8, 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: Colors.deepOrange)),
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
                final pickedDate =
                    await showDateRangePicker(
                        context: context,
                        firstDate: DateTime(2022),
                        lastDate: DateTime(2023));
                if (pickedDate != null) {
                  String initialDate =
                      DateFormat('yyyy-MM-dd')
                          .format(pickedDate.start);
                  String finalDate =
                      DateFormat('yyyy-MM-dd')
                          .format(pickedDate.end);
                  setState(() {
                    dateInput.text =
                        '$initialDate - $finalDate';
                  });
                }
              },
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Colors.deepOrange)),
            child: const Text(
              'Check Flight',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 17,
          )
        ],
      ),
    );
  }
}
