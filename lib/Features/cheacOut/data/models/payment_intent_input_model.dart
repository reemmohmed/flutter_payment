class PaymentIntentInputModel {
  final String amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});
  // methode الهدف منها تحويل الداتا اللي عندك الي map
  toJson() {
    return {
      'amount': amount,
      'currency': currency,
    };
  }
}
