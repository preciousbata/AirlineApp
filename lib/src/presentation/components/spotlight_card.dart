import 'package:flutter/material.dart';

class SpotlightCard extends StatelessWidget {
  const SpotlightCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
    );
  }
}
