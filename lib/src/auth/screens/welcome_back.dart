import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/auth/screens/create_new.dart';
import 'package:crypto_wallet_app/src/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({super.key});

  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF46DE99),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 45.h,
            ),
            Text(
              'Welcome Back',
              style: TextStyle(
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFFFfFF)),
            ),
            SizedBox(
              height: 18.h,
            ),
            Container(
              width: 287.w,
              height: 35.h,
              child: Text(
                textAlign: TextAlign.start,
                'Please login to your account using your password',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFfFF)),
              ),
            ),
            SizedBox(
              height: 77.h,
            ),
            Expanded(
              child: Container(
                width: 375.w,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(23.r),
                        topRight: Radius.circular(23.r))),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 37.h,
                      ),
                      Container(
                        width: 287.w,
                        height: 37.h,
                        child: Text(
                          textAlign: TextAlign.start,
                          'Enter Password to unlock',
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000)),
                        ),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(18.sp, 9.sp, 18.sp, 0),
                        height: 55.h,
                        width: 310.w,
                        color: Colors.grey[200],
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff989898)),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 27.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                        child: Container(
                          height: 57.h,
                          width: 310.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.r),
                            color: Color(0xff44D9A2),
                          ),
                          child: Center(
                            child: Text(
                              'Open Wallet',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF)),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                          width: 310.w,
                          child: Column(
                            children: [
                              Text('Cant login? You can erase your current',
                                  style: TextStyle(color: Color(0xff989898))),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('wallet and ',
                                      style:
                                          TextStyle(color: Color(0xff989898))),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CreateNew(),
                                        ),
                                      );
                                    },
                                    child: Text('Setup New Wallet',
                                        style: TextStyle(
                                            color: Color(0xFF46DE99))),
                                  )
                                ],
                              )
                            ],
                          )),
                      SizedBox(
                        height: 18.h,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
