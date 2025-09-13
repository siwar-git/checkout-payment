import 'package:checkout_payment/features/checkout/presentation/views/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.translate(
        offset: Offset(0, 26),
          child: ThankYouViewBody()),
    );
  }
}
