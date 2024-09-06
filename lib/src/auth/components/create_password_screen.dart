import 'package:crypto_wallet_app/src/auth/screens/import_wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePasswordScreen extends StatefulWidget {
  final VoidCallback onNext;

  const CreatePasswordScreen({required this.onNext});

  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 37.h),
          Text(
            "Create Password",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 9.h),
          Text(
            "This Password Will Unlock Your Wallet Only On This Device",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 37.h),
          TextField(
            decoration: InputDecoration(
              labelText: "New Password",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.r),
                borderSide: BorderSide.none,
              ),
            ),
            obscureText: true,
          ),
          SizedBox(height: 18.h),
          TextField(
            decoration: InputDecoration(
              labelText: "Confirm Password",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.r),
                borderSide: BorderSide.none,
              ),
            ),
            obscureText: true,
          ),
          SizedBox(height: 18.h),
          Row(
            children: [
              Checkbox(
                activeColor: Color(0xff44D9A2),
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    text:
                        "I understand crypto cannot recover this password for me ",
                    children: [
                      TextSpan(
                        text: "Learn More.",
                        style: TextStyle(color: Color(0xFF46DE99)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 37.h,
          ),
          ElevatedButton(
            onPressed: isChecked ? widget.onNext : null,
            child: Text(
              "Create Password",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFFFFF)),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: isChecked ? Color(0xFF46DE99) : Colors.grey[400],
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.r),
              ),
            ),
          ),
          Spacer(),
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
