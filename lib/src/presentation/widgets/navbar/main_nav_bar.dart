import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/screens/bookingscreen.dart';
import 'package:ibomair/src/presentation/screens/homescreen.dart';

class MainNavBar extends StatefulWidget {
  const MainNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const BookingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.deepOrange,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        unselectedItemColor: const Color(0xff828282),
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
            activeIcon: Icon(
              Icons.home_rounded,
              color: Colors.green,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_rounded),
              activeIcon: Icon(
                Icons.airplane_ticket_rounded,
                color: Colors.green,
              ),
              label: 'Booking'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: 'Profile',
            activeIcon: Icon(
              Icons.person_2_rounded,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
