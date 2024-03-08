import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DealsPrice extends StatelessWidget {
  const DealsPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          NumberFormat.currency(symbol: '₦').format(95000),
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        Text(
          NumberFormat.currency(symbol: '₦').format(123000),
          style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.lineThrough),
        ),
      ],
    );
  }
}
