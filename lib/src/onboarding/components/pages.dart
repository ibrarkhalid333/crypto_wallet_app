import 'package:crypto_wallet_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Pages extends StatelessWidget {
  const Pages(
      {Key? key,
      required this.title,
      required this.path,
      required this.description})
      : super(key: key);
  final String title;
  final String path;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1C1E20),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Card(
            elevation: 5,
            child: Container(
              width: 287.w,
              height: 360.h,
              child: Center(
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 15.h),
          Container(
            width: 287.w,
            height: 60.h,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF585F66),
              ),
            ),
          ),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
