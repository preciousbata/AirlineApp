import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/components/custom_button.dart';
import 'package:ibomair/src/presentation/components/custom_dropdown_field.dart';
import 'package:intl/intl.dart';

class RoundTripFlightTab extends StatefulWidget {
  const RoundTripFlightTab({Key? key}) : super(key: key);

  @override
  State<RoundTripFlightTab> createState() => _RoundTripFlightTabState();
}

class _RoundTripFlightTabState extends State<RoundTripFlightTab> {
  TextEditingController dateInput = TextEditingController();
  DateTimeRange dateTimeRange =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());
  final _departureDropDownList = [
    'UYO (QUO)',
    'ABUJA (ABJ)',
    'ENUGU (EGU)',
    'LAGOS (LAG)'
  ];
  final _arrivalDropDownList = [
    'UYO (QUO)',
    'ABUJA (ABJ)',
    'ENUGU (EGU)',
    'LAGOS (LAG)'
  ];
  final _flightClassDropDownList = ['Business', 'Economy'];
  final __numberOfChildrenDropDownList = ['1', '2', '3', '4'];
  final __numberOfAdultDropDownList = ['1', '2', '3', '4'];

  String? _selectedDeparture;
  String? _selectedArrival;
  String? _selectedFlightClass;
  String? _numberOfChildren;
  String? _numberOfAdult;

  // @override
  // void initState() {
  //   dateInput.text =
  //       '${DateFormat('yyyy-MM-dd').format(dateTimeRange.start)} - ${DateFormat('yyyy-MM-dd').format(dateTimeRange.end)}';
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          image: const DecorationImage(
              image: AssetImage('assets/images/bg3.jpeg'),
              fit: BoxFit.cover,
              opacity: 0.4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomDropDownField(
                leadingIcon: const Icon(
                  Icons.flight_takeoff_rounded,
                  color: Colors.deepOrange,
                ),
                hint: 'Departure Airport',
                initialItem: _selectedDeparture,
                items: _departureDropDownList,
                onItemSelected: (String value) {
                  setState(() {
                    _selectedDeparture = value;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomDropDownField(
                leadingIcon: const Icon(
                  Icons.flight_land_rounded,
                  color: Colors.deepOrange,
                ),
                hint: 'Arrival Airport',
                initialItem: _selectedArrival,
                items: _arrivalDropDownList,
                onItemSelected: (String value) {
                  setState(() {
                    _selectedArrival = value;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: dateInput,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.calendar_month_rounded,
                      color: Colors.deepOrange,
                    ),
                    hintText: 'Pick a date range',
                    hintStyle: const TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 0.3),
                        borderRadius: BorderRadius.circular(5))),
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
              const SizedBox(
                height: 20,
              ),
              CustomDropDownField(
                leadingIcon: const Icon(
                  Icons.flight_class_rounded,
                  color: Colors.deepOrange,
                ),
                hint: 'Flight Class',
                initialItem: _selectedFlightClass,
                items: _flightClassDropDownList,
                onItemSelected: (String value) {
                  setState(() {
                    _selectedFlightClass = value;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 205,
                    child: CustomDropDownField(
                      hint: 'Num. of Children',
                      initialItem: _numberOfChildren,
                      items: __numberOfChildrenDropDownList,
                      spacing: 3,
                      leadingIcon: const Icon(
                        Icons.child_care_outlined,
                        color: Colors.deepOrange,
                      ),
                      onItemSelected: (String value) {
                        setState(() {
                          _numberOfChildren = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: size.height * 0.005,
                  ),
                  Expanded(
                    child: CustomDropDownField(
                      hint: 'Adults',
                      leadingIcon: const Icon(
                        Icons.person_2_rounded,
                        color: Colors.deepOrange,
                      ),
                      spacing: 6,
                      items: __numberOfAdultDropDownList,
                      initialItem: _numberOfAdult,
                      onItemSelected: (String value) {
                        setState(() {
                          _numberOfAdult = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              CustomButton(
                text: 'Check Flights',
                width: double.infinity,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
