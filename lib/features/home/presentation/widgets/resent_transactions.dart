import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';
import 'package:flutter_course/features/home/presentation/widgets/view_resent_transactions.dart';


class ResentTransactions extends StatelessWidget {
  const ResentTransactions({super.key});

  @override
  Widget build(BuildContext context) { 
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: MyColors.brandSecondaryColor),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TextButton(
              onPressed: () => print('Soy ver todo resent'),
              style: ButtonStyle(alignment: Alignment.topRight),
              child: Text(
                'View All',
                style: TextStyle(
                  color: MyColors.brandPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            ViewResentTransactions(
              day: 'tue',
              numDay: 6,
              showPointGreen: false,
            ),
            ViewResentTransactions(day: 'TUE', numDay: 7, showPointGreen: true),
            ViewResentTransactions(day: 'sun', numDay: 12, showPointGreen: true),
          ],
        ),
      ),
    );
  }
}