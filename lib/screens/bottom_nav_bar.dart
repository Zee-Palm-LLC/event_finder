import 'package:event_finder/data/constants.dart';
import 'package:flutter/material.dart';

import '../routes/page_routes.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;
  int ourindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: CustomColor.korange,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              ourindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: BottomNavContainer(
                index: 0,
                selectedIndex: _selectedIndex,
                icon: Icons.home,
              ),

              //Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: BottomNavContainer(
                selectedIndex: 1,
                icon: Icons.bar_chart,
                index: ourindex,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: BottomNavContainer(
                selectedIndex: 2,
                icon: Icons.person,
                index: ourindex,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: BottomNavContainer(
                selectedIndex: 3,
                icon: Icons.person,
                index: ourindex,
              ),
              label: '',
            ),
          ]),
    );
  }
}

class BottomNavContainer extends StatelessWidget {
  final int index;
  final IconData icon;
  const BottomNavContainer({
    Key? key,
    required int selectedIndex,
    required this.icon,
    required this.index,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Icon(icon,
            size: 30,
            color: _selectedIndex == index
                ? CustomColor.korange
                : CustomColor.kgrey),
      ),
    );
  }
}
