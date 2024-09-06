import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/Token/screens/import_token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TokenTab extends StatelessWidget {
  const TokenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 18.h,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('lib/data/assets/Ellipse.png'),
          ),
          title: Text('0.00 THETA'),
          subtitle: Text('0 USD'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Text(
          textAlign: TextAlign.center,
          'Don\'t see your tokens?',
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
                builder: (context) => ImportToken(),
              ),
            );
          },
          child: Text(
            'Import Token',
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
