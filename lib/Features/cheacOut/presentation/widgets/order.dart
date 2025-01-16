import 'package:flutter/material.dart';
import 'package:flutter_paymant/core/Utels/Styels.dart';

class Order extends StatelessWidget {
  const Order({
    super.key,
    required this.titel,
    required this.price,
  });
  final String titel, price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titel,
          style: Styels.styel18,
        ),
        Spacer(),
        Text(
          style: Styels.styel18,
          price,
        )
      ],
    );
  }
}
