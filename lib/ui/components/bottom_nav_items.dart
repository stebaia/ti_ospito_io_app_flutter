import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:ti_ospito_io_app_flutter/ui/pages/main_page.dart';

List<PersistentBottomNavBarItem> navBarsItems() => [
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.home_outlined),
          title: "Home",
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
          inactiveColorSecondary: Colors.purple),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.map_outlined),
        title: "map",
        activeColorPrimary: Colors.blueAccent,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.sos),
        title: "sos",
        activeColorPrimary: Colors.blueAccent,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.message_outlined),
        title: "Messages",
        activeColorPrimary: Colors.deepOrange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: "profile",
        activeColorPrimary: Colors.indigo,
        inactiveColorPrimary: Colors.grey,
      ),
    ];

List<Widget> buildScreens() =>
    [HomePage(), HomePage(), HomePage(), HomePage(), HomePage()];
