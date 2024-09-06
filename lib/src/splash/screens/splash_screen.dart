import 'package:crypto_wallet_app/src/splash/provider/splash_screen_provider.dart';
import 'package:crypto_wallet_app/src/splash/services/splash_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = new SplashServices();
  @override
  void initState() {
    super.initState();
    splashServices.IsLogin(context); // Pass context here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Loge Here'),
      ),
    );
  }
}
