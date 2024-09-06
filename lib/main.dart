import 'package:crypto_wallet_app/src/splash/provider/splash_screen_provider.dart';
import 'package:crypto_wallet_app/src/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashScreenProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Crypto Wallet App",
        home: SplashScreen(),
      ),
    );
  }
}
