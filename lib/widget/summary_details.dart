import 'package:fitness_tracker/constant/colors.dart';
import 'package:fitness_tracker/widget/custom_card.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: limeColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails('Cal', '305'),
          buildDetails('Steps', '10983'),
          buildDetails('Distance', '7km'),
          buildDetails('Sleep', '7hr'),
        ],
      ),
    );
  }

  Widget buildDetails(String key, String value) {
    return Column(
      children: [
        Text(
          key,
          style: TextStyle(fontSize: 11, color: whiteColor.withOpacity(0.5)),
        ),
        SizedBox(height: 2),
        Text(value, style: TextStyle(fontSize: 14, color: whiteColor)),
      ],
    );
  }
}
