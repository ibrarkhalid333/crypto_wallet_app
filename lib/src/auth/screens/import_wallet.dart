import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/auth/screens/create_new.dart';
import 'package:crypto_wallet_app/src/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImportWallet extends StatefulWidget {
  const ImportWallet({super.key});

  @override
  State<ImportWallet> createState() => _ImportWalletState();
}

class _ImportWalletState extends State<ImportWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF46DE99),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Import Account',
              style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFFFfFF)),
            ),
            SizedBox(
              height: 17.h,
            ),
            Container(
              width: 287.w,
              height: 35.h,
              child: Text(
                textAlign: TextAlign.start,
                'import your exiting account by entering its detail',
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFfFF)),
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            Expanded(
              child: Container(
                width: 375.w,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        topRight: Radius.circular(25.r))),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 35.h,
                      ),
                      Container(
                        width: 287.w,
                        height: 35.h,
                        child: Text(
                          textAlign: TextAlign.start,
                          'Import Account Details',
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
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        height: 55.h,
                        width: 310.w,
                        color: Colors.grey[200],
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Secret Recovery Phrase',
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff989898)),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        height: 55.h,
                        width: 310.w,
                        color: Colors.grey[200],
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Your Password',
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff989898)),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 55.h,
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
                          height: 55.h,
                          width: 310.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xff44D9A2),
                          ),
                          child: Center(
                            child: Text(
                              'Import Wallet',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
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
                        child: Text(
                          'Create New Wallet',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff44D9A2)),
                        ),
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
