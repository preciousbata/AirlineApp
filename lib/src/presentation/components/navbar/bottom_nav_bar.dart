import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/booking/booking_screen.dart';
import 'package:ibomair/src/presentation/home/home_screen.dart';
import 'package:ibomair/src/presentation/profile/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = '/bottom-nav-bar';
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const BookingScreen(),
    const ProfileScreen()
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
