import 'package:flutter/material.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/view/payment_detalse.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/Custom_buttom.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/PaymentListView.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/order.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/total.dart';
import 'package:flutter_paymant/core/Utils/Styels.dart';

class MycardViewBody extends StatelessWidget {
  const MycardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 26,
          ),
          Expanded(
            child: Image.asset(
              'assets/image/card.png',
              height: 277,
              width: 424,
            ),
          ),
          const Order(
            titel: 'Order Subtotal',
            price: r'$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const Order(
            titel: 'Discount',
            price: r'$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const Order(
            titel: 'Shipping',
            price: r'$8',
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color(0xffC7C7C7),
          ),
          const SizedBox(
            height: 15,
          ),
          const Total(titel: 'ToTal', price: r'$50.97'),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            onTab: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) {
              //     return const PaymentDetalse();
              //   }),
              // );

              showModalBottomSheet(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  context: context,
                  builder: (context) {
                    return const CustomButtomSheet();
                  });
            },
            titel: 'Complete Payment',
          )
        ],
      ),
    );
  }
}

class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentListView(),
          SizedBox(
            height: 10,
          ),
          CustomButtom(
            titel: 'Containue',
            onTab: () {},
          ),
        ],
      ),
    );
  }
}
