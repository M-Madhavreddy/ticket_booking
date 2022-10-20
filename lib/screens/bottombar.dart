import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/homesceen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const Text("search"),
    const Text("ticket"),
    const Text("personal"),
  ];
  int counter = 0;

  void screen (int index)
  {
      setState((){
        counter = index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: _screens[counter]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: counter,
        onTap: screen,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular, size: 30),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular, size: 30),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular, size: 30),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular, size: 30),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "home"),
        ],
      ),
    );
  }
}
