import 'package:flutter/material.dart';
import 'package:flutter_paymant/core/Utels/Styels.dart';

class Total extends StatelessWidget {
  const Total({super.key, required this.titel, required this.price});
  final String titel, price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titel,
          style: Styels.styel24,
        ),
        Spacer(),
        Text(
          price,
          style: Styels.styel24,
        ),
      ],
    );
  }
}
