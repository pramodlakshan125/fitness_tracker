import 'package:fitness_tracker/constant/colors.dart';
import 'package:fitness_tracker/widget/pie_chart_card.dart';
import 'package:fitness_tracker/widget/schduled_widget.dart';
import 'package:fitness_tracker/widget/summary_details.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          PieChartCard(),
          Text(
            "Summary",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16),
          SummaryDetails(),
          SizedBox(height: 16),
          ScheduledWidget(),
        ],
      ),
    );
  }
}
