import 'package:crypto_wallet_app/src/home/screens/home.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Transaction History'),
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 310,
                color: Color(0xffF8F8F8),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('lib/data/assets/Ellipse.png'),
                  ),
                  title: Text('50.00 THETA'),
                  subtitle: Text('50\$'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 60,
                width: 310,
                color: Color(0xffF8F8F8),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('lib/data/assets/Ellipse.png'),
                  ),
                  title: Text('50.00 ETH'),
                  subtitle: Text('50\$'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ),
            ],
          ),
        ));
  }
}
