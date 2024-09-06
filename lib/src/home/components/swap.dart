import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Swap extends StatefulWidget {
  const Swap({super.key});

  @override
  _SwapState createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  final List<String> items1 = ['ETH', 'USDT', 'THETA'];
  String selectedValue1 = 'Select token to swap';
  final List<String> items2 = ['ETH', 'USDT', 'THETA'];
  String selectedValue2 = 'Select token';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Swap'),
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
                    borderRadius: BorderRadius.circular(5)),
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
                title: Text(selectedValue1),
                trailing: PopupMenuButton<String>(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onSelected: (value) {
                    setState(() {
                      selectedValue1 = value;
                    });
                  },
                  itemBuilder: (context) {
                    return items1.map((String item) {
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
            Container(
              height: 57.h,
              width: double.infinity,
              color: Color(0xffF8F8F8),
              child: ListTile(
                title: Text(selectedValue2),
                trailing: PopupMenuButton<String>(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onSelected: (value) {
                    setState(() {
                      selectedValue2 = value;
                    });
                  },
                  itemBuilder: (context) {
                    return items2.map((String item) {
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
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Get Quotes",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff46DE99),
                minimumSize: Size(double.infinity, 50),
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

void main() {
  runApp(MaterialApp(
    home: Swap(),
  ));
}
