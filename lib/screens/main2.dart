import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:we_commerce/data/utils/color.dart';
import 'package:we_commerce/data/utils/icons.dart';
import 'package:we_commerce/data/utils/style.dart';
import 'package:we_commerce/screens/account/account_screen.dart';
import 'package:we_commerce/screens/cart/cart_screen.dart';
import 'package:we_commerce/screens/home/home_screen.dart';
import 'package:we_commerce/screens/search/search_screen.dart';

class Main2 extends StatefulWidget {
  @override
  _Main2State createState() => _Main2State();
}

class _Main2State extends State<Main2> {
  int selectedBNB = 0;

  void changeBNB(int index) {
    setState(() {
      selectedBNB = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        appBar: (selectedBNB == 0 || selectedBNB == 1)
            ? PreferredSize(
                preferredSize: Size.fromHeight(150), // Set this height
                child: Container(
                  padding:
                      EdgeInsets.only(top: 44, left: 24, right: 16, bottom: 18),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.0, color: MyColors.lightGrey))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(12),
                                child: SvgPicture.asset(
                                  MyIcons.search,
                                ),
                              ),
                              hintText: 'Search Product',
                              labelStyle: MyTextStyle.poppinsReg,
                              hintStyle: MyTextStyle.poppinsReg),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset(MyIcons.love),
                      SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset(MyIcons.notification),
                    ],
                  ),
                ),
              )
            : null,
        body: _widgetOptions.elementAt(selectedBNB),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedBNB,
          selectedItemColor: MyColors.primaryBlue,
          onTap: changeBNB,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  MyIcons.home_un,
                ),
                label: 'Home',
                activeIcon: SvgPicture.asset(
                  MyIcons.home,
                  color: MyColors.primaryBlue,
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(MyIcons.explore),
                label: 'Explore',
                activeIcon: SvgPicture.asset(
                  MyIcons.explore,
                  color: MyColors.primaryBlue,
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(MyIcons.cart),
                label: 'Cart',
                activeIcon: SvgPicture.asset(
                  MyIcons.cart,
                  color: MyColors.primaryBlue,
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(MyIcons.user),
                label: 'Account',
                activeIcon: SvgPicture.asset(
                  MyIcons.user,
                  color: MyColors.primaryBlue,
                )),
          ],
        ),
      ),
    );
  }
}
