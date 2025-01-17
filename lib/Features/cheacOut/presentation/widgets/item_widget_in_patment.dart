import 'package:flutter/material.dart';

class ItemWidgetinPayment extends StatelessWidget {
  const ItemWidgetinPayment(
      {super.key, this.isactive = false, required this.image});
  final bool isactive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 200),
      height: 62,
      width: 103,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: isactive ? Colors.green : Colors.black, blurRadius: 4)
          ],
          borderRadius: BorderRadius.circular(15),
          color: isactive ? Colors.green : Color(0xff0000)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Image.asset(image),
      ),
    );
  }
}
