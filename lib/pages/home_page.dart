import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widget/side_menu.dart';
import 'package:fitness_tracker/widget/summary.dart';
import 'package:fitness_tracker/widget/dashboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SideMenu(),
            )
          : null,
      endDrawer: !isDesktop
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Summary(),
            )
          : null,

      body: SafeArea(
        child: Row(
          children: [
            //Side menu
            if (isDesktop)
              Expanded(flex: 2, child: SizedBox(child: SideMenu())),
            //Dashboard
            Expanded(flex: 7, child: SizedBox(child: Dashboard())),
            //Summary
            if (isDesktop) Expanded(flex: 3, child: SizedBox(child: Summary())),
          ],
        ),
      ),
    );
  }
}
