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
//1: payment entent object  creat payment itenet(amount , currency),
//2 : int payment scheet(int payment cline sceutrt)
//3 : pressent payment sheet