import 'package:fitness_tracker/constant/colors.dart';
import 'package:fitness_tracker/data/helth_details_data.dart';
import 'package:fitness_tracker/widget/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final helthDetailsData = HelthDetailsData();
    return GridView.builder(
      itemCount: helthDetailsData.helthDetailsData.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                helthDetailsData.helthDetailsData[index].icon,
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 4),
                child: Text(
                  helthDetailsData.helthDetailsData[index].value,
                  style: TextStyle(
                    fontSize: 18,
                    color: secondaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                helthDetailsData.helthDetailsData[index].title,
                style: TextStyle(
                  fontSize: 13,
                  color: greyColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
