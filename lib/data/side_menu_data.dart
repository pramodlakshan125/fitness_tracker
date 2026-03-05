import 'package:fitness_tracker/models/side_menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final sideMenu = <SideMenuItem>[
    SideMenuItem(icon: Icons.home, title: "Dashboard"),
    SideMenuItem(icon: Icons.person, title: "Profile"),
    SideMenuItem(icon: Icons.run_circle, title: "Exercise"),
    SideMenuItem(icon: Icons.settings, title: "Settings"),
    SideMenuItem(icon: Icons.history, title: "History"),
    SideMenuItem(icon: Icons.logout, title: "Sign Out"),
  ];
}
