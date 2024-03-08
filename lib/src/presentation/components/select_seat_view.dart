import 'package:flutter/material.dart';
import 'package:ibomair/constant.dart';
import 'package:ibomair/src/presentation/components/custom_button.dart';

class SelectSeatView extends StatefulWidget {
  const SelectSeatView({Key? key}) : super(key: key);

  @override
  _SelectSeatViewState createState() => _SelectSeatViewState();
}

class _SelectSeatViewState extends State<SelectSeatView> {
  List<List<bool>> seatMap =
      List.generate(6, (row) => List.generate(4, (col) => false));
  List<String> selectedSeats = [];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              for (int row = 0; row < seatMap.length; row++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int col = 0; col < seatMap[row].length; col++)
                      if (col == 0 || col == seatMap[row].length - 1)
                        Container(
                          width: 30,
                          height: 30,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                        )
                      else
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              seatMap[row][col] = !seatMap[row][col];
                              for (int row = 0; row < seatMap.length; row++) {
                                for (int col = 1;
                                    col < seatMap[row].length - 1;
                                    col++) {
                                  if (seatMap[row][col]) {
                                    selectedSeats.add(
                                        '${String.fromCharCode('A'.codeUnitAt(0) + row)}$col');
                                  }
                                }
                              }
                            });
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color:
                                  seatMap[row][col] ? Colors.red : Colors.green,
                            ),
                            child: Center(
                              child: Text(
                                '${String.fromCharCode('A'.codeUnitAt(0) + row)}$col',
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                  ],
                ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        CustomButton(
            height: 35,
            ctnColor: selectedSeats.isEmpty ? Colors.grey : primaryColor,
            onTap: selectedSeats.isEmpty
                ? null
                : () => print('Selected Seats: $selectedSeats'),
            text: 'Proceed to Payment')
      ],
    ));
  }
}
