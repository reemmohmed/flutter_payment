import 'package:flutter/material.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/build_appbar.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/payment_detalse_body.dart';

class PaymentDetalse extends StatelessWidget {
  const PaymentDetalse({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: BuildAppBar(
            () {
              Navigator.pop(context);
            },
            color: Colors.blue,
            titel: 'payment Detalse',
          ),
          body: const PaymentDetalseBody()),
    );
  }
}
