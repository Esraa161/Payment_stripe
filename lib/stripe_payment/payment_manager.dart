import 'package:dio/dio.dart';
import 'package:paymant_stiper/stripe_payment/stripe_keys.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
abstract class PaymentManager {
  static Future<void> makePayment(int amount, String currency)async {
    try{
      String clintSecret=await _getClntSecret((amount*100).toString(), currency);
     await _initializePaymentSheet(clintSecret);
     await Stripe.instance.presentPaymentSheet();
    }catch(error){
      throw Exception(error.toString());
    }
  }
  static Future<void>_initializePaymentSheet(String clintSecret)async{
    await Stripe.instance.initPaymentSheet(paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret:clintSecret,
      merchantDisplayName: "esraa"
    ));
  }
  static Future<String>_getClntSecret(String amount, String currency)async{
    Dio dio=Dio();
    var response= await dio.post('https://api.stripe.com/v1/payment_intents',
   options:Options(
    headers: {
    'Authorization': 'Bearer ${ApiKeys.secretkey}',
    'Content-Type': 'application/x-www-form-urlencoded'
    },
    ),
      data: {
        'amount': amount,
        'currency': currency,
      }
    );
    return response.data["client_secret"];
  }
}