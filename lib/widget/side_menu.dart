import 'package:fitness_tracker/constant/colors.dart';
import 'package:fitness_tracker/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  // state tracker for selected menu item
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: backgroundColor,
      child: ListView.builder(
        itemCount: SideMenuData().sideMenu.length,
        itemBuilder: (context, index) {
          return sideMenuList(SideMenuData(), index);
        },
      ),
    );
  }

  Widget sideMenuList(SideMenuData sideMenuData, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: selectedIndex == index ? sectionColor : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  sideMenuData.sideMenu[index].icon,
                  color: selectedIndex == index ? blackColor : greyColor,
                ),
                SizedBox(width: 20),
                Text(
                  sideMenuData.sideMenu[index].title,
                  style: TextStyle(
                    color: selectedIndex == index ? blackColor : greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
