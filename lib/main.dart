import 'package:flutter/material.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/view/my_card.dart';

void main() {
  runApp(const ChecOutPayment());
}

class ChecOutPayment extends StatelessWidget {
  const ChecOutPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCard(),
    );
  }
}
