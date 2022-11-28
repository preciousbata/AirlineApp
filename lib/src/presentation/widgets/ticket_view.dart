import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('ff'),
                    Text('ff'),
                    Text('ff'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
