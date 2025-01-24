import 'package:flutter_paymant/Features/cheacOut/data/models/payment_intent_input_model.dart';
import 'package:flutter_paymant/Features/cheacOut/data/models/payment_intent_models/payment_intent_models.dart';
import 'package:flutter_paymant/core/Utils/api_key.dart';
import 'package:flutter_paymant/core/Utils/api_serves.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeServese {
  ApiServes apiServes = ApiServes();
  Future<PaymentIntentModels> creatPaymentIntent(
      PaymentIntentInputModel paymentIntetInputModel) async {
    var response = await apiServes.post(
        body: paymentIntetInputModel.toJson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretkey);
    var paymentInteteModel = PaymentIntentModels.fromJson(response.data);
    return paymentInteteModel;
  }

  Future inetPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'roba',
        paymentIntentClientSecret: paymentIntentClientSecret,
      ),
    );
  }

  Future displayPaymentSheet() async {
    Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntetInputModel}) async {
    var paymentIntedModel = await creatPaymentIntent(paymentIntetInputModel);
    await inetPaymentSheet(
        paymentIntentClientSecret: paymentIntedModel.clientSecret!);
    await displayPaymentSheet();
  }
}
