import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/components/custom_button.dart';
import 'package:ibomair/src/presentation/components/secondary_ticket_view.dart';
import 'package:ibomair/src/presentation/components/ticket_card.dart';

class CheckOutDetails extends StatelessWidget {
  const CheckOutDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        image: const DecorationImage(
            image: AssetImage('assets/images/bg3.jpeg'),
            fit: BoxFit.cover,
            opacity: 0.4),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 20.0, right: 10, left: 10),
        child: Column(
          children: [
            TicketView(isRecentFlight: false,isDeals: false,),
            SizedBox(
              height: 5,
            ),
            SecondaryTicketView(),
            SizedBox(
              height: 25,
            ),
            CustomButton(
              onTap: null,
              text: 'Book Now',
              width: double.infinity,
            ),
            SizedBox(
              height: 12,
            ),
            CustomButton(
              onTap: null,
              text: 'Pay Now',
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
