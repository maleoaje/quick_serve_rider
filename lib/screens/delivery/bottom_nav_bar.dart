import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quick_serve_rider/config/constants.dart';
import 'package:quick_serve_rider/screens/delivery/screens/account.dart';
import 'package:quick_serve_rider/screens/delivery/screens/favorites.dart';
import 'package:quick_serve_rider/screens/delivery/screens/home.dart';
import 'package:quick_serve_rider/screens/delivery/screens/order_history.dart';
import 'package:quick_serve_rider/screens/delivery/screens/search.dart';

class BottomNavBarDelivery extends StatefulWidget {
  const BottomNavBarDelivery({Key? key}) : super(key: key);

  @override
  _BottomNavBarDeliveryState createState() => _BottomNavBarDeliveryState();
}

class _BottomNavBarDeliveryState extends State<BottomNavBarDelivery> {
  late PageController _pageController;
  int _currentIndex = 0;

  // Pages if you click bottom navigation
  final List<Widget> _contentPages = <Widget>[
    const HomePageRider(),
    const FavoritesPageDelivery(),
    const SearchPageDelivery(),
    const OrderHistoryDelivery(),
    const AccountPageDelivery()
  ];

  @override
  void initState() {
    // set initial pages for navigation to home page
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(_handleTabSelection);
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // this function is used for exit the application, user must click back button two times
  DateTime? _currentBackPressTime;
  Future<bool> _onWillPop() {
    DateTime now = DateTime.now();
    if (_currentBackPressTime == null ||
        now.difference(_currentBackPressTime!) > const Duration(seconds: 2)) {
      _currentBackPressTime = now;
      Fluttertoast.showToast(
          msg: 'Press back again to select service',
          backgroundColor: primaryColor,
          toastLength: Toast.LENGTH_LONG);
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
        ),
      ),
      body: WillPopScope(
        onWillPop: _onWillPop,
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _contentPages.map((Widget content) {
            return content;
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          _pageController.jumpToPage(value);
          // this unfocus is to prevent show keyboard in the wishlist page when focus on search text field
          FocusScope.of(context).unfocus();
        },
        selectedFontSize: 12,
        unselectedFontSize: 10,
        elevation: 2,
        iconSize: 28,
        items: [
          BottomNavigationBarItem(
            label: 'map',
            icon: Icon(LineIcons.compass,
                size: 25,
                color: _currentIndex == 0 ? primaryColor : primaryDark),
          ),
          BottomNavigationBarItem(
            label: 'schedule',
            icon: Icon(LineIcons.calendarWithDayFocus,
                size: 25,
                color: _currentIndex == 1 ? primaryColor : primaryDark),
          ),
          BottomNavigationBarItem(
            label: 'earnings',
            icon: Icon(LineIcons.handHoldingUsDollar,
                size: 25,
                color: _currentIndex == 2 ? primaryColor : primaryDark),
          ),
          BottomNavigationBarItem(
            label: 'ratings',
            icon: Icon(LineIcons.star,
                size: 25,
                color: _currentIndex == 3 ? primaryColor : primaryDark),
          ),
          BottomNavigationBarItem(
            label: 'profile',
            icon: Icon(LineIcons.user,
                size: 25,
                color: _currentIndex == 4 ? primaryColor : primaryDark),
          ),
        ],
      ),
    );
  }
}
