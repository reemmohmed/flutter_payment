import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/view/thank_you.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/CustomCreditCard.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/PaymentListView.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/Custom_buttom.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/item_widget_in_patment.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/thank_you_body.dart';

class PaymentDetalseBody extends StatefulWidget {
  const PaymentDetalseBody({
    super.key,
  });

  @override
  State<PaymentDetalseBody> createState() => _PaymentDetalseBodyState();
}

class _PaymentDetalseBodyState extends State<PaymentDetalseBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 12),
            child: PaymentListView(),
          ),
        ),
        // SliverToBoxAdapter(
        //   child: CustomCreditCard(
        //     globalKey: formKey,
        //     autovalidateMode: autovalidateMode,
        //   ),
        // ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CustomButtom(
                  onTab: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      log('payment');
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const ThankYou();
                          },
                        ),
                      );
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  titel: 'Pay',
                ),
              )),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        )
      ],
    );
  }
}
