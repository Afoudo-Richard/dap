import 'package:dap/presentation/pages/history_page/history_page.dart';
import 'package:dap/presentation/pages/home_page/home_page.dart';
import 'package:dap/presentation/pages/profile_page/profile_page.dart';
import 'package:dap/presentation/pages/wallet_page/wallet_page.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const HomePage(),
      const WalletPage(),
      const HistoryPage(),
      const ProfilePage(),
    ];

    final kTabPageTitles = ["Home", "Prices", "Buy & Sell", "Activity", ""];
    return Scaffold(
      body: _kTabPages[_currentPage],

      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        type: BottomNavigationBarType.fixed,
        //showUnselectedLabels: true,
        backgroundColor: Colors.white,
        // selectedItemColor: _selectedItemColor,
        // unselectedItemColor: _unselectedItemColor,
        currentIndex: _currentPage,
        // onTap: (int index) {
        //   setState(() {
        //     _currentPage = index;
        //   });
        // },
        items: [
          _bottomNavItem(
            index: 0,
            icon: Icons.home,
            text: "Home",
            onTap: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          _bottomNavItem(
            index: 1,
            icon: Icons.credit_card,
            text: "Wallet",
            onTap: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          _bottomNavItem(
            index: 2,
            icon: Icons.list_alt_sharp,
            text: "History",
            onTap: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          _bottomNavItem(
            index: 3,
            icon: Icons.person,
            text: "Profile",
            onTap: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _bottomNavItem(
      {required IconData icon,
      required String text,
      required index,
      required void Function(int x) onTap}) {
    return BottomNavigationBarItem(
      title: Text(
        text,
        style: TextStyle(),
      ),
      icon: GestureDetector(
        onTap: () {
          onTap(index);
        },
        child: Icon(
          icon,
          color: _getItemColor(index),
          size: 30.0,
        ),
      ),
    );
  }

  Color _getItemColor(int index) =>
      _currentPage == index ? Colors.blue : Colors.blueGrey;
}
