import 'package:flutter/material.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/item_widget_in_patment.dart';

class PaymentListView extends StatefulWidget {
  const PaymentListView({super.key});

  @override
  State<PaymentListView> createState() => _PaymentListViewState();
}

class _PaymentListViewState extends State<PaymentListView> {
  final List<String> image = const [
    'assets/image/cradetcard.png',
    'assets/image/payment.png'
  ];
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: image.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                activeindex = index;
                setState(() {});
              },
              child: ItemWidgetinPayment(
                image: image[index],
                isactive: activeindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
