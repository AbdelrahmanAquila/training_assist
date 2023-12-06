import 'package:flutter/material.dart';

import 'Chat/chats_screen.dart';
import 'home_screen.dart';
import 'remiders_screen.dart';

class LayoutScreen extends StatefulWidget {
  LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

@override
void initState() {}

class _LayoutScreenState extends State<LayoutScreen> {
  int index = 0;
  final titles = <String?>['Home', 'Test'];

  final screens = <Widget>[
    HomeScreen(),
    ChatsScreen(),
    ReminderScreen(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: index, onTap: onChangedTab, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Reminders'),
      ]),
    );
  }

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}
