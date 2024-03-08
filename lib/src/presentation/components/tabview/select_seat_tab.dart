import 'package:flutter/material.dart';
import 'package:ibomair/constant.dart';
import 'package:ibomair/src/presentation/components/select_seat_view.dart';
import 'package:intl/intl.dart';
import 'package:svg_flutter/svg.dart';

class SelectSeatTab extends StatefulWidget {
  const SelectSeatTab({Key? key}) : super(key: key);

  @override
  _SelectSeatTabState createState() => _SelectSeatTabState();
}

class _SelectSeatTabState extends State<SelectSeatTab> {
  List<List<bool>> seatMap =
      List.generate(6, (row) => List.generate(4, (col) => false));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: Container(
          height: 500,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/images/airplane_frame.svg',
              ),
              const Positioned(top: 190, left: 89.5, child: SelectSeatView()),
              const Positioned(
                top: 120,
                left: 140.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'IBOM',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 12,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'AIR',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 160,
                left: 126,
                child: Text(
                  DateFormat('MMMM d, y H:mm').format(DateTime.now()),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
