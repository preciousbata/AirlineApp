import 'package:flutter/material.dart';

class PassengerCounter extends StatelessWidget {
  final String options;
  const PassengerCounter({Key? key, required this.options})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 38,
      width: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.deepOrange),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.add),
          ),
          Text(options),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
