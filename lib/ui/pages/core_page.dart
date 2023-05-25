import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:ti_ospito_io_app_flutter/ui/components/bottom_nav_items.dart';
import 'package:ti_ospito_io_app_flutter/ui/pages/main_page.dart';
import 'package:ti_ospito_io_app_flutter/ui/pages/maps_point_page.dart';

class CorePage extends StatefulWidget {
  const CorePage({super.key});

  @override
  State<CorePage> createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MapsPointPage(),
    HomePage(),
    HomePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    BuildContext testContext;
    return Scaffold(
      body: Container(child: _widgetOptions.elementAt(_selectedIndex)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.sos, color: Colors.white),
          onPressed: () {}),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: IconButton(
                        icon: Icon(
                          CupertinoIcons.house_alt,
                          color: _selectedIndex == 0
                              ? Colors.black
                              : Color.fromARGB(255, 104, 103, 103),
                        ),
                        onPressed: () => _onItemTapped(0))),
                Expanded(
                    child: IconButton(
                        icon: Icon(
                          CupertinoIcons.map,
                          color: _selectedIndex == 1
                              ? Colors.black
                              : Color.fromARGB(255, 104, 103, 103),
                        ),
                        onPressed: () => _onItemTapped(1))),
                SizedBox(width: 40), // The dummy child
                Expanded(
                    child: IconButton(
                        icon: Icon(
                          CupertinoIcons.bubble_left,
                          color: _selectedIndex == 2
                              ? Colors.black
                              : Color.fromARGB(255, 104, 103, 103),
                        ),
                        onPressed: () => _onItemTapped(0))),
                Expanded(
                    child: IconButton(
                        icon: Icon(CupertinoIcons.person),
                        color: _selectedIndex == 3
                            ? Colors.black
                            : Color.fromARGB(255, 104, 103, 103),
                        onPressed: () => _onItemTapped(0))),
              ],
            ),
          )),
    );
    //floating action button position to center

    //floating action button position to center
  }
}
