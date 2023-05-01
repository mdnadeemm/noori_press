import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noori_press/screen/product_display_screen.dart';

import 'category_display_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex =0;
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (index){
                setState(() {
                  currentIndex = index;
                });
              },
              children: const [
                ProductDisplayScreen(),
                CategoryDisplayScreen()
              ],
            )
          ],
        ),
      ),
    );
  }
}
