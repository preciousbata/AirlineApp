import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        ],
      ),
    );
  }
}
