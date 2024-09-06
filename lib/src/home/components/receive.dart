import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/home/components/dialoge_box.dart';
import 'package:crypto_wallet_app/src/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Receive extends StatefulWidget {
  const Receive({super.key});

  @override
  _ReceiveState createState() => _ReceiveState();
}

class _ReceiveState extends State<Receive> {
  final List<String> items = ['ETH', 'USDT', 'THETA'];
  String selectedValue = 'ETH';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Amount'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Container(
                width: 85.w,
                height: 27.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    border: Border.all(color: Color(0xff44D9A2)),
                    borderRadius: BorderRadius.circular(5.r)),
                child: Center(
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff44D9A2)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 17.h,
            ),
            Container(
              height: 57.h,
              width: double.infinity,
              color: Color(0xffF8F8F8),
              child: ListTile(
                title: Text(selectedValue),
                trailing: PopupMenuButton<String>(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onSelected: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  itemBuilder: (context) {
                    return items.map((String item) {
                      return PopupMenuItem<String>(
                        value: item,
                        child: Container(
                          width: 300.w,
                          child: Text(item),
                        ),
                      );
                    }).toList();
                  },
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              '0',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 37.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff44D9A2)),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Balance: 0.0 ETH',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff4F4F4F)),
            ),
            SizedBox(
              height: 20.h,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DialogeBox();
                  },
                );
              },
              child: Text(
                "Scan QR Code",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff46DE99),
                minimumSize: Size(40.w, 40.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Next",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff46DE99),
                minimumSize: Size(double.infinity, 50.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
