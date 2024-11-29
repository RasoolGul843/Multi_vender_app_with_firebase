import 'package:flutter/material.dart';
import 'package:multi_vender_app_with_firebase/View/Buyers/nav_screens/AccountScreen.dart';
import 'package:multi_vender_app_with_firebase/View/Buyers/nav_screens/CartScreen.dart';
import 'package:multi_vender_app_with_firebase/View/Buyers/nav_screens/CategoriesScreen.dart';
import 'package:multi_vender_app_with_firebase/View/Buyers/nav_screens/HomeScreen.dart';
import 'package:multi_vender_app_with_firebase/View/Buyers/nav_screens/SearchScreen.dart';
import 'package:multi_vender_app_with_firebase/View/Buyers/nav_screens/StoreScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CategoriesScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              width: 20,
              'assets/Home1.png',
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              width: 20,
              'assets/explore1.png',
            ),
            label: 'CATEGORIES',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              width: 20,
              'assets/shop.png',
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(width: 20, 'assets/cart.png'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/search.png'),
            label: '  Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/account.png'),
            label: '  Account',
          ),
        ],
      ),
      body: pages[pageIndex],
    );
  }
}
