import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double? width, height, borderRadius, fontSize;
  final Color? ctnColor, textColor;
  final String text;
  final void Function()? onTap;
  const CustomButton(
      {Key? key,
      this.height = 55,
      this.width = 180,
      this.borderRadius = 8,
      this.ctnColor = Colors.deepOrange,
      required this.onTap,
      required this.text,
      this.fontSize = 18,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: ctnColor,
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}