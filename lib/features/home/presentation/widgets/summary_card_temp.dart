import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';
import 'package:flutter_course/features/home/presentation/widgets/currency_formater.dart';

enum TypeSummaryCard { incomes, spending }

class SummaryCardTemp extends StatelessWidget {
  final TypeSummaryCard typeSummaryCard;
  final Function()? action;
  final String title;
  final double amount;
  const SummaryCardTemp({
    super.key,
    required this.typeSummaryCard,
    required this.title,
    this.action,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    var incomesIcon = const Icon(
      Icons.arrow_upward,
      color: MyColors.brandOnSuccessColor,
    );
    var spendingIcon = const Icon(
      Icons.arrow_downward,
      color: MyColors.brandOnErrorColor,
    );
    return Container(
      height: 92,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: MyColors.brandLightColorOpacity,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: MyColors.brandLightColor,
            ),
            child: typeSummaryCard == TypeSummaryCard.incomes
                ? incomesIcon
                : spendingIcon,
          ),
          Expanded(
            child: Text(title, style: Theme.of(context).textTheme.displaySmall),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CurrencyFormatter(
                  amount: amount,
                  amountStyle: Theme.of(context).textTheme.displayMedium,
                  amountStyleSmall: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  'From January 1 to January 31',
                  style: TextStyle(
                    color: MyColors.brandLightColor,
                    fontFamily: 'Roboto-Italic',
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: Border.all(color: MyColors.brandSecondaryColor),
              shape: BoxShape.rectangle,
            ),
            margin: const EdgeInsets.only(top: 8),
            child: IconButton(
              onPressed: action,
              icon: const Icon(
                Icons.chevron_right,
                color: MyColors.brandSecondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}