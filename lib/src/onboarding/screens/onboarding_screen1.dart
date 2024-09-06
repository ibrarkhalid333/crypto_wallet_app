import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/auth/screens/get_started.dart';
import 'package:crypto_wallet_app/src/onboarding/components/pages.dart';
import 'package:crypto_wallet_app/src/onboarding/provider/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OnboardingProvider>(
      create: (context) => OnboardingProvider(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: PageView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Pages(
                          title: 'Trusted by Missions',
                          path: 'lib/data/assets/Bitcoin P2P-pana.png',
                          description:
                              'Here you can write desctroption of the page and find out whar you wantr'),
                      Pages(
                          title: 'Safe Reliabele & Super Fast',
                          path: 'lib/data/assets/Secure Server-bro.png',
                          description:
                              'Here you can write desctroption of the page and find out whar you wantr'),
                      Pages(
                          title: 'Your Key to eplore Web3',
                          path: 'lib/data/assets/online-world.png',
                          description:
                              'Here you can write desctroption of the page and find out whar you wantr'),
                    ],
                  ),
                ),
                Container(
                  width: 30.w,
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      expansionFactor: 3,
                      radius: 4.0.r,
                      dotWidth: 8.w,
                      dotHeight: 8.w,
                      dotColor: Colors.grey,
                      activeDotColor: Color(0xFF46DE99),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                GestureDetector(
                  onTap: () {
                    final currentPage = _controller.page?.round() ?? 0;
                    final nextPage = currentPage + 1;
                    if (nextPage < 3) {
                      _controller.animateToPage(
                        nextPage,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GetStarted(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    'SKIP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF46DE99),
                    ),
                  ),
                ),
                SizedBox(height: 5.h)
              ],
            ),
          ),
        );
      }),
    );
  }
}
