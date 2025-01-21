import 'package:flutter/material.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/build_appbar.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/thank_you_body.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: BuildAppBar(
          () {
            Navigator.pop(context);
          },
        ),
        body: Transform.translate(
          offset: const Offset(0, -16),
          child: const ThankYouBody(),
        ),
      ),
    );
  }
}
