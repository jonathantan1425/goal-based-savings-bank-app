import 'package:app/components/homeAppBar.dart';
import 'package:app/components/cardsList.dart';
import 'package:app/components/recentTransactions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Column(
        children: [
          CardsList(),
          RecentTransactions(),
        ],
      ),
    );
  }
}
