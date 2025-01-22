import 'package:flutter/material.dart';
import 'package:flutter_paymant/core/Utils/Styels.dart';

AppBar BuildAppBar(void Function()? ontap, {String? titel, Color? color}) {
  return AppBar(
    leading: IconButton(
        padding: EdgeInsets.zero,
        onPressed: ontap,
        icon: const Icon(
          weight: 10,
          Icons.arrow_back,
          color: Colors.black,
          size: 40,
        )),
    elevation: 0,
    backgroundColor: color,
    centerTitle: true,
    title: Text(
      titel ?? '',
      style: Styels.styel25,
    ),
  );
}
