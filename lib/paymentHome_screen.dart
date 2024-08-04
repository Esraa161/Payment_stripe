import 'package:flutter/material.dart';
import 'package:paymant_stiper/stripe_payment/payment_manager.dart';
class PaymentHomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patment"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed:()async{
              await PaymentManager.makePayment(20,"USD");
    },

                child: Text("pay 20\$")),
          ),
          Center(
            child: ElevatedButton(onPressed:()async{
              await PaymentManager.makePayment(50,"EGP");
            },

                child: Text("pay 20 EGP")),
          ),
        ],
      ),
    );
  }
}
