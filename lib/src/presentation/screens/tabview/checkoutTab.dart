import 'package:flutter/material.dart';
import '../../widgets/checkoutdetails.dart';

class CheckoutTab extends StatelessWidget {
  const CheckoutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: CheckOutDetails(),
    );
  }
}
