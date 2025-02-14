import 'package:flutter/material.dart';
import 'package:logistic/features/screens/personalifications/Billing/billing.dart';
import 'package:logistic/features/screens/personalifications/HomePage/home_page.dart';
import 'package:logistic/features/screens/personalifications/Package/Package.dart';
import 'package:logistic/features/screens/views/TrackingFolder/Tracking.dart';
class MyNavigatorMenu extends StatefulWidget {
  const MyNavigatorMenu({Key? key}) : super(key: key);

  @override
  State<MyNavigatorMenu> createState() => _MyNavigatorMenuState();
}

class _MyNavigatorMenuState extends State<MyNavigatorMenu> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const Tracking(),
    const Package(),
    const Billing(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        indicatorColor: const Color(0xFF023020),
        shadowColor: Colors.cyanAccent,
        destinations: const [
          NavigationDestination(icon:Icon(Icons.home, color: Colors.grey,), label: 'Home'),
          NavigationDestination(icon:Icon(Icons.location_on_outlined,color: Colors.grey,), label: 'Tracking'),
          NavigationDestination(icon:Icon(Icons.backpack, color: Colors.grey,), label: 'Package'),
          NavigationDestination(icon:Icon(Icons.local_atm,color: Colors.grey,), label: 'Billing'),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
