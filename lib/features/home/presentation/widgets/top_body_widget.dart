import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';
import 'package:flutter_course/core/design/radius.dart';
import 'package:flutter_course/features/home/presentation/widgets/currency_formater.dart';
import 'package:flutter_course/features/home/presentation/widgets/summary_card_temp.dart';

class TopBodyWidget extends StatelessWidget {
  const TopBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0, -12, 0),
      height: 420,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: MyColors.brandPrimaryColor,
        borderRadius: BorderRadiusGeometry.only(
          bottomLeft: MyRadius.large,
          bottomRight: MyRadius.large,
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 42),
            Text(
              'Your budget',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            CurrencyFormatter(
              amount: 2868000.000,
              amountStyle: Theme.of(context).textTheme.displayLarge,
              amountStyleSmall: Theme.of(context).textTheme.displaySmall,
              padding: const EdgeInsets.only(right: 4, top: 8),
            ),
            SizedBox(height: 42),
            SummaryCardTemp(
              typeSummaryCard: TypeSummaryCard.incomes,
              title: 'Ingresos ',
              action: () => print('Presionaron card Ingresos'),
              amount: 200000.23,
            ),
            SizedBox(height: 8),
            SummaryCardTemp(
              typeSummaryCard: TypeSummaryCard.spending,
              title: 'Gastos ',
              action: () => print('Presionaron card gastos'),
              amount: 132312.34,
            ),
          ],
        ),
      ),
    );
  }
}