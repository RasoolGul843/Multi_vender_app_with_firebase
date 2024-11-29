import 'package:flutter/material.dart';
import 'package:multi_vender_app_with_firebase/View/Buyers/nav_screens/Widgets/BannerWidget.dart';
import 'package:multi_vender_app_with_firebase/View/Buyers/nav_screens/Widgets/Categories.dart';
import 'package:multi_vender_app_with_firebase/View/Buyers/nav_screens/Widgets/SearchInput.dart';
import 'package:multi_vender_app_with_firebase/View/Buyers/nav_screens/Widgets/Welcometext.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Welcom_Text(),
        SizedBox(
          height: 10,
        ),
        SearchInput(),
        BannerWidget(),
        CategoriesWidget()
      ],
    );
  }
}
