import 'package:flutter/material.dart';
import 'dissmisible.dart';
import 'drawer.dart';
import 'snack_bar.dart';


class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white,fontSize: 18))
          // MaterialStateProperty.resolveWith<TextStyle>(
          //       (Set<MaterialState> states) => states.contains(MaterialState.selected)
          //       ? const TextStyle(color: Colors.white,fontSize: 18)
          //       : const TextStyle(color: Colors.black),
          // ),
        ),
        child: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          backgroundColor: Theme.of(context).primaryColor,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.pinkAccent,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              tooltip: 'home',
            ),
            NavigationDestination(
              icon: Icon(Icons.business),
              label: 'Business',
              tooltip: 'Business',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.school),
              icon: Icon(Icons.school_outlined),
              label: 'School',
              tooltip: 'School',
            ),
          ],
        ),
      ),
      body: <Widget>[
        const DissmissibleWidget(),
        const DrawerWidget(),
        const SnackBarPage()
      ][currentPageIndex],
    );
  }
}
