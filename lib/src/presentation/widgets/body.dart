import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Widget widget;
  const Body({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)),
        color: Colors.deepOrange,
      ),
      child: widget,
    );
  }
}
