import 'package:flutter/material.dart';
import 'package:flutter_paymant/core/Utels/Styels.dart';

class CompletPayment extends StatelessWidget {
  const CompletPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
          backgroundColor: const Color(0xff34A853),
        ),
        onPressed: () {},
        child: Text(
          'Complete Payment',
          style: Styels.styel22.copyWith(color: Colors.black),
        ));
  }
}
