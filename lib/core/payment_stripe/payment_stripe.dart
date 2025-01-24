import 'package:dio/dio.dart';

import 'package:flutter_paymant/core/payment_stripe/api_key.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

abstract class PaymentStrpe {
  static Future<void> makePayment(String currency, int amount) async {
    try {
      String clintSecret =
          await _getClintSesret((amount * 100).toString(), currency);
      await _initalizePayment(clintSecret);
      await Stripe.instance.presentPaymentSheet();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<void> _initalizePayment(String clintSecreet) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: clintSecreet,
      merchantDisplayName: 'reem',
    ));
  }

  static Future<String> _getClintSesret(String amount, String currency) async {
    Dio dio = Dio();
    var response = await dio.post(
      'https://api.stripe.com/v1/payment_intents',
      options: Options(
        headers: {
          'Authorization': "Bearer ${ApiKey.secrerKey}",
          "Content-Type": "application/x-www-form-urlencoded"
        },
      ),
      data: ({'amount': amount, 'currency': currency}),
    );
    return response.data['client_secret'];
  }
}
//1 medtho (curency, amount ){
//  clintSecrect الللي ختاخذ البيانات الخاصة بيها من medtho get clintsecret}
//2 _initalizePayment
//3 presentPaymentSheet