import 'package:flutter/material.dart';

class OneWayTab extends StatefulWidget {
  const OneWayTab({Key? key}) : super(key: key);

  @override
  State<OneWayTab> createState() => _OneWayTabState();
}

class _OneWayTabState extends State<OneWayTab> {
  _OneWayTabState() {
    _selectedDeparture = _departureDropDownList[0];
  }
  TextEditingController dateInput = TextEditingController();
  final _departureDropDownList = ['UYO', 'ABUJA', 'ENUGU', 'LAGOS'];
  String? _selectedDeparture = '';
  @override
  void initState() {
    dateInput.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: AssetImage('assets/images/bg3.jpeg'),
              fit: BoxFit.cover,
              opacity: 0.4),
        ),
        child: Column(
          children: [
            DropdownButtonFormField(
              value: _selectedDeparture,
              items: _departureDropDownList
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))

                  .toList(),
              onChanged: (val) {
                setState(() {
                  _selectedDeparture = val as String;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 90.0),
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
