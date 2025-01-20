import 'package:flutter/material.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/custom_list_generate.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/thank_you_card.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),
          Positioned(
            left: -20,
            bottom: MediaQuery.of(context).size.height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
              right: -20,
              bottom: MediaQuery.of(context).size.height * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
            right: 20 + 10,
            left: 20 + 10,
            bottom: MediaQuery.of(context).size.height * .2 + 20,
            child: CustomListGenerate(),
          ),
          const Positioned(
              top: -50,
              right: 0,
              left: 0,
              child: const CircleAvatar(
                radius: 50,
                backgroundColor: const Color(0xffD9D9D9),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xff34A853),
                  child: Icon(
                    Icons.check,
                    size: 32,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
