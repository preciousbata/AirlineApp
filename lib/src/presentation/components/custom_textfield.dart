import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final double hintSize;
  final Color hintColor;
  final FontWeight hintFontWeight;
  final TextEditingController? controller;
  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.controller,
      this.hintColor = Colors.black,
      this.hintFontWeight = FontWeight.w300,
      this.hintSize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
        prefixIcon: Icon(
          icon,
          color: Colors.deepOrange,
        ),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
        fillColor: Colors.grey.shade200,
        filled: true,
        //prefixIconColor: Colors.deepOrange,
        hintStyle: TextStyle(
            fontWeight: hintFontWeight, color: hintColor, fontSize: hintSize),
      ),
    );
  }
}
