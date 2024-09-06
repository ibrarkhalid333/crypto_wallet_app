import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/auth/screens/import_wallet.dart';
import 'package:crypto_wallet_app/src/home/screens/home.dart';
import 'package:crypto_wallet_app/src/settings/screens/settings.dart';
import 'package:crypto_wallet_app/src/transaction%20history/screens/transaction_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ECCNIA',
                  style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff1A1B2D)),
                ),
                IconButton(
                  icon: Icon(Icons.close, size: 22.sp),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 42.r,
                    backgroundImage: AssetImage('lib/data/assets/Ellipse.png'),
                  ),
                  SizedBox(height: 7.h),
                  Text(
                    'Account 01',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff44D9A2)),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '0xtyur......74e3',
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333)),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '0 USD',
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff333333)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            ListTile(
              leading: Icon(Icons.account_balance_wallet, size: 24.sp),
              title: Text(
                "Wallet",
                style: TextStyle(fontSize: 16.sp),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.history, size: 24.sp),
              title: Text(
                "Transaction History",
                style: TextStyle(fontSize: 16.sp),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransactionHistory(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.share, size: 24.sp),
              title: Text(
                "Share Public Address",
                style: TextStyle(fontSize: 16.sp),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.visibility, size: 24.sp),
              title: Text(
                "View on Etherson",
                style: TextStyle(fontSize: 16.sp),
              ),
              onTap: () {},
            ),
            Spacer(),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings, size: 24.sp),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 16.sp),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.help, size: 24.sp),
              title: Text(
                "Get Help",
                style: TextStyle(fontSize: 16.sp),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 24.sp,
                color: Colors.white,
              ),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 16.sp),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImportWallet(),
                  ),
                );
              },
              tileColor: Colors.redAccent,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
