import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/src/home/components/collectables_bar.dart';
import 'package:crypto_wallet_app/src/home/components/custom_appbar.dart';
import 'package:crypto_wallet_app/src/home/components/dialoge_box.dart';
import 'package:crypto_wallet_app/src/home/components/navbar.dart';
import 'package:crypto_wallet_app/src/home/components/receive.dart';
import 'package:crypto_wallet_app/src/home/components/send.dart';
import 'package:crypto_wallet_app/src/home/components/swap.dart';
import 'package:crypto_wallet_app/src/home/components/token_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;
  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Navbar(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.h),
          child: CustomAppBar(onDrawerButtonPressed: _openDrawer),
        ),
        body: Column(
          children: [
            //  CustomAppBar(onDrawerButtonPressed: _openDrawer),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Receive(),
                              ),
                            );
                          },
                          child: Container(
                            height: 75.h,
                            width: 90.w,
                            color: Color(0xff813CF1).withOpacity(.1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage(
                                        'lib/data/assets/Receive.png')),
                                Text(
                                  textAlign: TextAlign.center,
                                  'Receive',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff44D9A2)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Send(),
                              ),
                            );
                          },
                          child: Container(
                            height: 75.h,
                            width: 90.w,
                            color: Color(0xff813CF1).withOpacity(.1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage(
                                        'lib/data/assets/Transfer.png')),
                                Text(
                                  textAlign: TextAlign.center,
                                  'Send',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff44D9A2)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Swap(),
                              ),
                            );
                          },
                          child: Container(
                            height: 75.h,
                            width: 90.w,
                            color: Color(0xff813CF1).withOpacity(.1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                    image:
                                        AssetImage('lib/data/assets/Swap.png')),
                                Text(
                                  textAlign: TextAlign.center,
                                  'Swap',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff44D9A2)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    TabBar(
                      controller: _tabController,
                      indicatorColor: Color(0xff44D9A2),
                      indicatorWeight: 3.0,
                      labelColor: Color(0xff44D9A2),
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Tokens',
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff44D9A2)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Collections',
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff44D9A2)),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [TokenTab(), CollectablesBar()],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
