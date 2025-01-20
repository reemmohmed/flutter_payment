import 'package:flutter/material.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/view/payment_detalse.dart';
import 'package:flutter_paymant/core/Utels/Styels.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.titel, this.onTab});
  final String titel;
  final void Function()? onTab;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
          backgroundColor: const Color(0xff34A853),
        ),
        onPressed: onTab,
        child: Text(
          titel,
          style: Styels.styel22.copyWith(color: Colors.black),
        ));
  }
}
