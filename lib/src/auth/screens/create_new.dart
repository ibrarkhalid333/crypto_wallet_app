import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/auth/components/secret_recovery_phrase.dart';
import 'package:crypto_wallet_app/src/auth/components/write_in_order.dart';
import 'package:crypto_wallet_app/src/auth/screens/import_wallet.dart';
import 'package:crypto_wallet_app/src/auth/screens/welcome_back.dart';
import 'package:flutter/material.dart';
import 'package:crypto_wallet_app/src/auth/components/create_password_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateNew extends StatefulWidget {
  const CreateNew({super.key});

  @override
  State<CreateNew> createState() => _CreateNewState();
}

class _CreateNewState extends State<CreateNew> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onNextPage() {
    setState(() {
      if (_currentPage < 2) {
        _currentPage++;
        _pageController.animateToPage(_currentPage,
            duration: Duration(milliseconds: 300), curve: Curves.ease);
      } else if (_currentPage == 2) {
        _currentPage++;
        _pageController.animateToPage(_currentPage,
            duration: Duration(milliseconds: 300), curve: Curves.ease);
        Future.delayed(Duration(milliseconds: 400), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => WelcomeBack(),
            ),
          );
        });
      }
    });
  }

  Widget _buildProgressIndicator(int index) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor:
              _currentPage >= index ? Color(0xFF46DE99) : Colors.grey[300],
          radius: 12.r,
          child: _currentPage > index
              ? Icon(Icons.check, color: Colors.white, size: 15.sp)
              : CircleAvatar(
                  radius: 8.r,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 4.r,
                    backgroundColor: _currentPage >= index
                        ? Color(0xFF46DE99)
                        : Colors.grey[300],
                  ),
                ),
        ),
        if (index < 2) // Draw a line between the steps except for the last one
          Container(
            width: 40.w,
            height: 2.h,
            color: _currentPage > index ? Color(0xFF46DE99) : Colors.grey[300],
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Wallet'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ImportWallet(),
              ),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                List.generate(3, (index) => _buildProgressIndicator(index)),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                CreatePasswordScreen(onNext: _onNextPage),
                SecretRecoveryPhrase(onNext: _onNextPage),
                WriteInOrder(onNext: _onNextPage)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
