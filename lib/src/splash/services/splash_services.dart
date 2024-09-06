import 'dart:async';

import 'package:crypto_wallet_app/src/onboarding/screens/onboarding_screen1.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void IsLogin(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => OnboardingScreen1(),
              ),
            ));
  }
}
