import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/Token/screens/import_token.dart';
import 'package:crypto_wallet_app/src/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImportCustomToken extends StatefulWidget {
  const ImportCustomToken({super.key});

  @override
  State<ImportCustomToken> createState() => _ImportCustomTokenState();
}

class _ImportCustomTokenState extends State<ImportCustomToken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Import Custom Token'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ImportToken(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 100.h,
              width: 315.w,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: Color(0xff44D9A2).withOpacity(.2),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    Icon(
                      Icons.info_outline,
                      size: 25.sp,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Expanded(
                      child: Container(
                        width: 252.w,
                        height: 90.h,
                        child: Text(
                          'Anyone can  create token,  including fake versions of existing token. Learn more about scams and security risks.',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4F4F4F)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 37.h,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              height: 57.h,
              width: 310.w,
              color: Colors.grey[200],
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Token Adress',
                    hintStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff989898)),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              height: 57.h,
              width: 310.w,
              color: Colors.grey[200],
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Token Symbol',
                    hintStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff989898)),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              height: 57.h,
              width: 310.w,
              color: Colors.grey[200],
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Token Decimal',
                    hintStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff989898)),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 37.h,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Import",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff46DE99),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Text(
                "Cancel",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff46DE99)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFFFfFF),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
