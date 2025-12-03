import 'package:flutter/material.dart';
import 'package:flutter_assignment/modules/home/dashboard_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;
  final screens = [DashboardView(), DashboardView(), DashboardView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(
          context,
        ).copyWith(primaryColor: Colors.white, canvasColor: Colors.white),
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) => setState(() => index = value),

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'favorites',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          ],
        ),
      ),
    );
  }
}
