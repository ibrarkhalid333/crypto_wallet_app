import 'package:crypto_wallet_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback onDrawerButtonPressed;

  const CustomAppBar({super.key, required this.onDrawerButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.r),
            bottomRight: Radius.circular(10.r)),
        color: Color(0xff44D9A2),
      ),
      child: Column(
        children: [
          // Header section with menu button and trailing text
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 8.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                  onPressed: onDrawerButtonPressed,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    CircleAvatar(
                      radius: 40.r,
                      backgroundImage:
                          AssetImage('lib/data/assets/Ellipse.png'),
                    ),
                    SizedBox(height: 9.h),
                    Text(
                      'Account 01',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFfFF),
                      ),
                    ),
                    SizedBox(height: 9.h),
                    Text(
                      '0xtyur......74e3',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFfFF),
                      ),
                    ),
                    SizedBox(height: 9.h),
                    Text(
                      '0 USD',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFfFF),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Container(
                    width: 90.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.r),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Ethereum',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff44D9A2),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Account info section
        ],
      ),
    );
  }
}
