import 'package:flutter/material.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/build_appbar.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/mycard_view_body.dart';
import 'package:flutter_paymant/core/Utils/Styels.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: BuildAppBar(
          () {},
          titel: 'MyCard',
        ),
        body: MycardViewBody(),
      ),
    );
  }
}
