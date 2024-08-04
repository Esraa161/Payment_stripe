import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:paymant_stiper/paymentHome_screen.dart';
import 'package:paymant_stiper/stripe_payment/stripe_keys.dart';
import 'home_screen.dart';

void main() {
  Stripe.publishableKey=ApiKeys.pusblishablekey;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:PaymentHomeScreen(),
    );
  }
}
