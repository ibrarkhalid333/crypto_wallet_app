import 'package:crypto_wallet_app/src/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Send extends StatefulWidget {
  const Send({super.key});

  @override
  _SendState createState() => _SendState();
}

class _SendState extends State<Send> {
  TextEditingController _searchController = TextEditingController();
  TextEditingController _tokenNameController = TextEditingController();
  TextEditingController _tokenIdController = TextEditingController();

  List<String> _allItems = [
    'Ahmad',
    'Asif',
    'Bilal',
    'Salman',
    'Qamar',
    'Raheel',
    'Ihsan'
  ];
  List<String> _filteredItems = [];

  bool _showDropdown = false;

  @override
  void initState() {
    super.initState();
    _filteredItems = _allItems; // Initialize with all items
    _searchController.addListener(() {
      filterSearchResults(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _tokenNameController.dispose();
    _tokenIdController.dispose();
    super.dispose();
  }

  void filterSearchResults(String query) {
    setState(() {
      if (query.isNotEmpty) {
        _filteredItems = _allItems
            .where((item) => item.toLowerCase().startsWith(query.toLowerCase()))
            .toList();
        _showDropdown = _filteredItems.isNotEmpty;
      } else {
        _filteredItems = [];
        _showDropdown = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send'),
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
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff44D9A2),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'From',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff333333),
                  ),
                ),
                SizedBox(height: 9.h),
                Container(
                  height: 57.h,
                  width: double.infinity,
                  color: Color(0xffF8F8F8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('lib/data/assets/Ellipse.png'),
                    ),
                    title: Text('Account 01'),
                    subtitle: Text('Balance: 0.0 ETH'),
                    trailing: Icon(Icons.keyboard_arrow_down),
                  ),
                ),
                SizedBox(height: 14.h),
                Text(
                  'To',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff333333),
                  ),
                ),
                SizedBox(height: 9.h),
                Container(
                  height: 57.h,
                  width: double.infinity,
                  color: Color(0xffF8F8F8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _searchController,
                              decoration: InputDecoration(
                                hintText: "Search public address here",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.qr_code),
                            color: Color(0xff333333),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Divider(
                  thickness: 2.sp,
                  color: Color(0xffBDBDBD),
                ),
                SizedBox(height: 27.h),
                TextField(
                  controller: _tokenNameController,
                  decoration: InputDecoration(
                    labelText: "Token Name",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 17.h),
                TextField(
                  controller: _tokenIdController,
                  decoration: InputDecoration(
                    labelText: "Token ID",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Action for the next button
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff46DE99),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                ),
                SizedBox(height: 9.h),
              ],
            ),
          ),
          if (_showDropdown)
            Positioned(
              left: 16,
              right: 16,
              top: 195.h,
              child: Material(
                elevation: 4.0,
                child: Container(
                  color: Color(0xffF8F8F8),
                  constraints: BoxConstraints(
                    maxHeight: 200.h,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: _filteredItems
                          .map((item) => ListTile(
                                title: Text(item),
                                onTap: () {
                                  setState(() {
                                    _searchController.text = item;
                                    _showDropdown = false;
                                  });
                                },
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
