import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/nft/screens/import_nft.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CollectablesBar extends StatelessWidget {
  const CollectablesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          textAlign: TextAlign.center,
          'Don\'t see yourNFT?',
          style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff989898)),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ImportNft(),
              ),
            );
          },
          child: Text(
            'Import NFT',
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff44D9A2)),
          ),
        ),
      ],
    );
  }
}
