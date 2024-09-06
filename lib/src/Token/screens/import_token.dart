import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/Token/screens/import_custom_token.dart';
import 'package:crypto_wallet_app/src/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImportToken extends StatefulWidget {
  const ImportToken({super.key});

  @override
  State<ImportToken> createState() => _ImportTokenState();
}

class _ImportTokenState extends State<ImportToken> {
  final List<Map<String, String>> tokens = [
    {'name': 'USDT', 'image': 'lib/data/assets/tokens/usdt_icon.png'},
    {'name': 'THETA', 'image': 'lib/data/assets/tokens/theta_icon.png'},
    {'name': 'SHIBA', 'image': 'lib/data/assets/tokens/shiba_icon.png'},
    {'name': 'USDC', 'image': 'lib/data/assets/tokens/usdc_icon.png'},
    {'name': 'HEX', 'image': 'lib/data/assets/tokens/hex_icon.png'},
    {'name': 'ETH', 'image': 'lib/data/assets/tokens/eth_icon.png'},
    {'name': 'XRP', 'image': 'lib/data/assets/tokens/xrp_icon.png'},
    {'name': 'BNB', 'image': 'lib/data/assets/tokens/bnb_icon.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Import Token'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ImportCustomToken(),
                ),
              );
            },
            child: Container(
              width: 125.w,
              height: 29.h,
              color: Color(0xff44D9A2),
              child: Center(
                child: Text(
                  'Custom Token',
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF)),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: tokens.length,
              itemBuilder: (context, index) {
                final token = tokens[index];
                return Container(
                  height: 62.h,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10.w),
                  margin: EdgeInsets.only(bottom: 8.0.h),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Color(0xffD7DDEA)),
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15.r,
                        backgroundImage: AssetImage(token['image']!),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        token['name']!,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0E1012)),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: 314.w,
            height: 50.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Color(0xff44D9A2),
            ),
            child: Center(
              child: Text(
                'ImportToken',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF)),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    );
  }
}
