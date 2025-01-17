import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/PaymentListView.dart';
import 'package:flutter_paymant/Features/cheacOut/presentation/widgets/item_widget_in_patment.dart';

class PaymentDetalseBody extends StatelessWidget {
  const PaymentDetalseBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          PaymentListView(),
          CustomCreditCard()
        ],
      ),
    );
  }
}

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({
    super.key,
  });

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  final GlobalKey<FormState> formKey = GlobalKey();

  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
            isHolderNameVisible: true,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            onCreditCardWidgetChange: (value) {}),
        CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (creditCardModel) {
              cardNumber = creditCardModel.cardNumber;
              expiryDate = creditCardModel.expiryDate;
              cardHolderName = creditCardModel.cardHolderName;
              cvvCode = creditCardModel.cvvCode;
              showBackView = creditCardModel.isCvvFocused;
              setState(() {});
            },
            formKey: formKey)
      ],
    );
  }
}
