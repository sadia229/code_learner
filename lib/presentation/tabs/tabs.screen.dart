import 'package:code_editor/presentation/home/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import 'controllers/tabs.controller.dart';

class TabsScreen extends GetView<TabsController> {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // simple bottom navigation bar
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          currentIndex: controller.tabIndex.value,
          onTap: controller.changeTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
          ],
        );
      }),

      body: Obx(() {
        return IndexedStack(
          index: controller.tabIndex.value,
          children: const [
            HomeScreen(),
            Center(
              child: Text('Search'),
            ),
            Center(
              child: Text('Profile'),
            ),
          ],
        );
      }),
    );
  }
}
