import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';
import 'package:flutter_course/features/home/presentation/widgets/date_icon.dart';
import 'package:flutter_course/features/home/presentation/widgets/row_resent_transactions.dart';

class ViewResentTransactions extends StatelessWidget {
  final String day;
  final int numDay;
  final bool showPointGreen;
  const ViewResentTransactions({
    super.key,
    required this.day,
    required this.numDay,
    required this.showPointGreen,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          spacing: 3,
          children: [
            DateIcon(day: day, num: numDay, showPointGreen: showPointGreen),
          ],
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: MyColors.brandLightColor,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),

              child: Column(
                children: [
                  RowResentTransactions(
                    typeResentTransaction: TypeResentTransaction.red,
                    title1: 'Battle Pass',
                    text: 'Monday 3th, November 2026',
                    amount: 2100.10,
                  ),
                  Divider(height: 1),
                  RowResentTransactions(
                    typeResentTransaction: TypeResentTransaction.green,
                    title1: 'Movement Name',
                    text: 'Tuesday 4th, September 2026',
                    amount: 420.10,
                  ),
                  Divider(height: 1),
                  RowResentTransactions(
                    typeResentTransaction: TypeResentTransaction.red,
                    title1: 'Movement Name',
                    text: 'Tuesday 4th, September 2026',
                    amount: 420.10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}