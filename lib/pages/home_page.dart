import 'package:fitness_tracker/widget/dashboard.dart';
import 'package:fitness_tracker/widget/details.dart';
import 'package:fitness_tracker/widget/side_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            //Side Menu
            Expanded(flex: 3, child: SizedBox(child: SideMenu())),
            //dashboard
            Expanded(flex: 8, child: SizedBox(child: Dashboard())),
            //Details Screen
            Expanded(flex: 4, child: SizedBox(child: Detais())),
          ],
        ),
      ),
    );
  }
}
