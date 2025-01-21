import 'package:flutter/material.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/order.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/total.dart';
import 'package:flutter_paymant/core/Utels/Styels.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 20, right: 22, left: 23),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              style: Styels.styel25,
            ),
            const Text(
              'Your transaction was successful',
              style: Styels.styel20,
            ),
            const SizedBox(
              height: 20,
            ),
            const Order(titel: 'Date', price: '01/24/2023'),
            const SizedBox(
              height: 20,
            ),
            const Order(titel: 'Time', price: '10:15 AM'),
            const SizedBox(
              height: 20,
            ),
            const Order(titel: 'To', price: 'Sam Louis'),
            const Divider(
              thickness: 2,
              height: 60,
            ),
            const Total(titel: 'Total', price: r'$50.97'),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
              width: 305,
              decoration: ShapeDecoration(
                color: const Color(0xffFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const InfoCard(),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  weight: 142,
                  FontAwesomeIcons.barcode,
                  size: 66,
                ),
                Container(
                  height: 58,
                  width: 113,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1.5,
                        color: Color(0xff34A853),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Center(
                    child: const Text(
                      'PAID',
                      style: Styels.styel24,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/image/logo.png'),
        const SizedBox(
          width: 22,
        ),
        const Column(
          children: [
            Text(
              'Credit Card',
              style: Styels.styel22,
            ),
            Text(
              'Mastercard **78',
              style: Styels.styel12038,
            ),
          ],
        ),
      ],
    );
  }
}
