import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:siesta_t1/app/core/extensions/ctx.dart';
import 'package:siesta_t1/app/pages/home.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const Center(child: Text('Orders Page')),
    const Center(child: Text('Bookmark Page')),
    const Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: context.primary,
        unselectedItemColor: context.outline,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.home,
              color: _currentIndex == 0 ? context.primary : context.outline,
            ),
            label: 'Home',
            activeIcon: Icon(
              Iconsax.home,
              color: context.primary,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.shopping_bag,
              color: _currentIndex == 1 ? context.primary : context.outline,
            ),
            label: 'Orders',
            activeIcon: Icon(
              Iconsax.shopping_bag,
              color: context.primary,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.bookmark,
              color: _currentIndex == 2 ? context.primary : context.outline,
            ),
            label: 'Bookmark',
            activeIcon: Icon(
              Iconsax.bookmark,
              color: context.primary,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.user,
              color: _currentIndex == 3 ? context.primary : context.outline,
            ),
            label: 'Profile',
            activeIcon: Icon(
              Iconsax.user,
              color: context.outline,
            ),
          ),
        ],
      ),
    );
  }
}
