import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/auth/screens/import_wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecretRecoveryPhrase extends StatelessWidget {
  final VoidCallback onNext;

  const SecretRecoveryPhrase({required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 22.h),
          Text(
            "Secret Recovery Phrase",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 9.h),
          Text(
            "This is your secret recovery. Write it down and save it somewhere This is your secret recovery. Write it down and save it somewhere",
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 13.h),
          Container(
            padding: EdgeInsets.all(20.sp),
            height: 290.h,
            width: 310.w,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Color(0xFF46DE99), width: 1.sp),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (rowIndex) {
                return Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(3, (colIndex) {
                      return Container(
                        width: 75.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF46DE99), width: 1.sp),
                        ),
                        alignment: Alignment.center,
                        child: Text('xyz'),
                      );
                    }),
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          ElevatedButton(
            onPressed: onNext,
            child: Text(
              "Continue",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFFFFF)),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF46DE99),
              minimumSize: Size(double.infinity, 45.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
          SizedBox(height: 13.h),
          Row(
            children: [
              Text(
                "Already have a wallet?",
                style: TextStyle(color: Color(0xff989898)),
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
                child: Text(
                  " Import Wallet",
                  style: TextStyle(color: Color(0xFF46DE99)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
