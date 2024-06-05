import 'package:diamond_store_app/core/constants/colors.dart';
import 'package:diamond_store_app/presentation/history/page/history_screen.dart';
import 'package:diamond_store_app/presentation/home/page/home_screen.dart';
import 'package:diamond_store_app/presentation/home/widgets/nav_item.dart';
import 'package:diamond_store_app/presentation/profile/page/profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppsColors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30.0,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0,
              color: AppsColors.black.withOpacity(0.08),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItems(
              label: 'Home',
              iconPath: Assets.icons.homes.path,
              isActive: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            NavItems(
              label: 'History',
              iconPath: Assets.icons.history.path,
              isActive: _selectedIndex == 1,
              onTap: () => _onItemTapped(1),
            ),
            NavItems(
              label: 'Profile',
              iconPath: Assets.icons.profiles.path,
              isActive: _selectedIndex == 2,
              onTap: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
    );
  }
}
