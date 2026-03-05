import 'package:fitness_tracker/widget/side_menu.dart';
import 'package:fitness_tracker/widget/summary.dart';
import 'package:fitness_tracker/widget/dashboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            //Side menu
            Expanded(flex: 2, child: SizedBox(child: SideMenu())),
            //Dashboard
            Expanded(flex: 7, child: SizedBox(child: Dashboard())),
            //Summary
            Expanded(flex: 3, child: SizedBox(child: Summary())),
          ],
        ),
      ),
    );
  }
}
