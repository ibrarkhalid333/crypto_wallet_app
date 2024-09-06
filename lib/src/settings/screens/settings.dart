import 'package:crypto_wallet_app/src/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final List<String> items1 = ['ETH', 'USDT', 'THETA'];
  String selectedValue1 = 'USDT';
  final List<String> items2 = ['EN', 'UR', 'PA'];
  String selectedValue2 = 'EN';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Settings'),
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
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Currency Conversion',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff333333)),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 251,
              child: Text(
                'Currency conversion, Primary currency, Language & Search engine',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4F4F4F)),
              ),
            ),
            SizedBox(
              height: 15,
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
              height: 15,
            ),
            Text(
              'Current Language',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff333333)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Manage private key & Export wallet',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4F4F4F)),
            ),
            SizedBox(
              height: 15,
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
            SizedBox(
              height: 15,
            ),
            Text(
              'Show Private Key',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff333333)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Tap and Hold to reveal and copy key',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4F4F4F)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'About Cryptomask',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff333333)),
            ),
          ],
        ),
      ),
    );
  }
}
