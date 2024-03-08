import 'package:flutter/material.dart';

class CustomThreeRowText extends StatelessWidget {
  final String leadingText, middleText, lastText;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  const CustomThreeRowText({
    Key? key,
    required this.leadingText,
    required this.middleText,
    required this.lastText,
    this.fontColor = Colors.black,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            leadingText,
            style: TextStyle(
              fontSize: fontSize,
              color: fontColor,
              fontWeight: fontWeight,
            ),
          ),
        ),
        Text(
          middleText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            color: fontColor,
            fontWeight: fontWeight,
          ),
        ),
        SizedBox(
          width: 100,
          child: Text(
            lastText,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: fontSize,
              color: fontColor,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ],
    );
  }
}
