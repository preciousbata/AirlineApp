import 'package:flutter/material.dart';

class CustomFlightPath extends StatelessWidget {
  final String departureAirport, arrivalAirport;
  final double? fontSize, leftSpacing, rightSpacing;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final bool? isCheckout;
  const CustomFlightPath(
      {Key? key,
      required this.departureAirport,
      required this.arrivalAirport,
      this.fontSize = 16,
      this.fontColor = Colors.black,
      this.fontWeight = FontWeight.w800,
      this.leftSpacing = 30,
      this.rightSpacing = 30,
      required this.isCheckout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        !isCheckout! ? const Spacer() : const SizedBox.shrink(),
        Text(
          departureAirport,
          style: TextStyle(
              fontSize: fontSize, color: fontColor, fontWeight: fontWeight),
        ),
        !isCheckout!
            ? SizedBox(
                width: leftSpacing,
              )
            : const Spacer(),
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2.5, color: Colors.deepOrange),
              color: Colors.deepOrange),
        ),
        Expanded(
          child: Stack(children: [
            SizedBox(
              height: 24,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(
                      (constraints.constrainWidth() / 6).floor(),
                      (index) => const SizedBox(
                        width: 3,
                        height: 1,
                        child: DecoratedBox(
                            decoration:
                                BoxDecoration(color: Colors.deepOrange)),
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Transform.rotate(
                angle: 1.5,
                child: const Icon(
                  Icons.local_airport_rounded,
                  color: Colors.deepOrange,
                ),
              ),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2.5, color: Colors.deepOrange),
              color: Colors.deepOrange),
        ),
        !isCheckout!
            ? SizedBox(
                width: rightSpacing,
              )
            : const Spacer(),
        Text(
          arrivalAirport,
          style: TextStyle(
              fontSize: fontSize, color: fontColor, fontWeight: fontWeight),
        ),
        !isCheckout! ? const Spacer() : const SizedBox.shrink()
      ],
    );
  }
}
