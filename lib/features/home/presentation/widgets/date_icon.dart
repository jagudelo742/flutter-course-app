import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';

class DateIcon extends StatelessWidget {
  final int num;
  final String day;
  final bool showPointGreen;
  const DateIcon({
    super.key,
    required this.num,
    required this.day,
    this.showPointGreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          (day.toUpperCase()),
          style: TextStyle(
            color: MyColors.brandLightDarkColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
        Text(
          ('$num'),
          style: TextStyle(
            color: MyColors.brandDarkColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontFamily: 'Roboto',
          ),
        ),
        if (showPointGreen)
          Icon(Icons.circle, color: MyColors.brandOnSuccessColor, size: 10),
      ],
    );
  }
}