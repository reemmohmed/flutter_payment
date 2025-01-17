import 'package:flutter/material.dart';
import 'package:flutter_paymant/core/Utels/Styels.dart';

AppBar BuildAppBar(void Function()? ontap, {required String titel}) {
  return AppBar(
    leading: IconButton(
        onPressed: ontap,
        icon: const Icon(
          weight: 10,
          Icons.arrow_back,
          color: Colors.white,
          size: 40,
        )),
    elevation: 0,
    backgroundColor: Colors.blue,
    centerTitle: true,
    title: Text(
      titel,
      style: Styels.styel25,
    ),
  );
}
