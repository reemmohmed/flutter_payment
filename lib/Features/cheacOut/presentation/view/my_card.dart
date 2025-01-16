import 'package:flutter/material.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/mycard_view_body.dart';
import 'package:flutter_paymant/core/Utels/Styels.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                weight: 10,
                Icons.arrow_back,
                color: Colors.white,
                size: 40,
              )),
          elevation: 0,
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'My Cart',
            style: Styels.styel25,
          ),
        ),
        body: MycardViewBody(),
      ),
    );
  }
}
