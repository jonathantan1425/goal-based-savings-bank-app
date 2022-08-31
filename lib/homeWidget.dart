import 'package:app/utilities/themeColors.dart';
import 'package:app/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

// Used for bottom navigation bar

class _HomeWidgetState extends State<HomeWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ThemeColors.kPrimaryColor,
          unselectedItemColor: ThemeColors.kSecondaryColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          onTap: onTabTapped,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.paid),
              label: "Transactions",
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.savings),
              label: "Savings",
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.feed),
              label: "Feed",
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.settings),
              label: "Settings",
            ),
          ]),
    );
  }
}
