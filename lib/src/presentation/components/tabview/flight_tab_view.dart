import 'package:flutter/material.dart';
import 'package:ibomair/constant.dart';
import 'package:ibomair/src/presentation/components/ticket_card.dart';

class FlightTab extends StatelessWidget {
  const FlightTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(color: Colors.grey.shade200),
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 30.0, top: 10, right: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '3 results found',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.filter_alt_rounded,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                height: 10,
                thickness: 3,
                color: primaryColor,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, int index) {
                    return const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                      child: TicketView(
                        isRecentFlight: false,
                        isDeals: false,
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 120,
            )
          ],
        ),
      ),
    );
  }
}
