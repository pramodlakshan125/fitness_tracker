import 'package:fitness_tracker/constant/colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        style: TextStyle(),
        decoration: InputDecoration(
          filled: true,
          fillColor: cardBgColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          labelStyle: TextStyle(color: greyColor),
        ),
      ),
    );
  }
}
