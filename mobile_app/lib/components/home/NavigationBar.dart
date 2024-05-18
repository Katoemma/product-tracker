import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/utilities/constants.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      itemCount: 4,
      backgroundColor: Theme.of(context).focusColor,
      tabBuilder: (index, isActive) {
        final color = isActive ? primaryColor : Colors.grey;
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              index == 0
                  ? Icons.home
                  : index == 1
                      ? Icons.favorite_border_outlined
                      : index == 2
                          ? Icons.shopping_cart_outlined
                          : Icons.person_4_outlined,
              color: color,
            ),
            const SizedBox(
                height: 4), // Add some space between the icon and the label
            Text(
              index == 0
                  ? 'Home'
                  : index == 1
                      ? 'Favourite'
                      : index == 2
                          ? 'Shopping'
                          : 'Profile',
              style: TextStyle(color: color),
            ),
          ],
        );
      },
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      activeIndex: _currentIndex,
      onTap: (activeIndex) {
        setState(() {
          _currentIndex = activeIndex;
        });
      },
    );
  }
}
