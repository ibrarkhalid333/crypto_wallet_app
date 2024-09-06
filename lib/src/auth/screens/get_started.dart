import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/auth/screens/create_new.dart';
import 'package:crypto_wallet_app/src/auth/screens/import_wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF46DE99),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 35.h,
            ),
            Text(
              'Wallet Setup',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFFFfFF)),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 287.w,
              height: 35.h,
              child: Text(
                textAlign: TextAlign.start,
                'import an exsiting wallet or create a new one',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFfFF)),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 335.w,
              height: 335.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/data/assets/Saly.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImportWallet(),
                  ),
                );
              },
              child: Container(
                height: 55.h,
                width: 314.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xffFFFFFF),
                ),
                child: Center(
                  child: Text(
                    'Import Existing',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff44D9A2)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateNew(),
                  ),
                );
              },
              child: Card(
                elevation: 10,
                child: Container(
                  height: 55.h,
                  width: 314.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xff44D9A2),
                  ),
                  child: Center(
                    child: Text(
                      'Create New',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFFFFF)),
                    ),
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
