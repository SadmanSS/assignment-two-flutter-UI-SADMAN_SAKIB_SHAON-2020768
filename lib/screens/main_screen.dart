import 'package:flutter/material.dart';
import 'package:ui_app_1/screens/page1.dart';
import 'package:ui_app_1/screens/page2.dart';
import 'package:ui_app_1/screens/page3.dart';
import 'package:ui_app_1/screens/page4.dart';
import 'package:ui_app_1/widgets/home_app_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        children: const [
          HomeWithTabs(),
          ReportsPage(),
          CardsPage(),
          ProfilePage(),
        ],
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.2),
              spreadRadius: 5,
              blurRadius: 20,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (i) {
              setState(() => _currentIndex = i);
              _pageController.jumpToPage(i);
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: const Color(0xFF4A37BE),
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: _buildIcon(0, Icons.home_filled, Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(1, Icons.bar_chart, Icons.bar_chart_outlined),
                label: "Reports",
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  2,
                  Icons.credit_card,
                  Icons.credit_card_outlined,
                ),
                label: "Cards",
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(3, Icons.person, Icons.person_outline),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(int index, IconData selectedIcon, IconData unselectedIcon) {
    final isSelected = _currentIndex == index;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: isSelected
          ? BoxDecoration(
              color: const Color(0xFFE0E7FF),
              borderRadius: BorderRadius.circular(12),
            )
          : null,
      child: Icon(
        isSelected ? selectedIcon : unselectedIcon,
        color: isSelected ? const Color(0xFF4A37BE) : Colors.grey,
      ),
    );
  }
}
