import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';
import 'package:flutter_course/features/home/presentation/widgets/currency_formater.dart';

enum TypeResentTransaction { red, green }

class RowResentTransactions extends StatelessWidget {
  final TypeResentTransaction typeResentTransaction;
  final String title1;
  final String text;
  final double amount;
  const RowResentTransactions({
    super.key,
    required this.typeResentTransaction,
    required this.title1,
    required this.text,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    var containerRed = MyColors.brandErrorColor;
    var containerGreen = MyColors.brandSuccessColor;
    var iconRed = MyColors.brandOnErrorColor;
    var iconGreen = MyColors.brandOnSuccessColor;
    var blackColor = MyColors.brandDarkColor;
    var iconExpandLess = Icon(
      Icons.expand_less,
      color: typeResentTransaction == TypeResentTransaction.green
          ? iconGreen
          : iconRed,
    );
    var iconExpandMore = Icon(
      Icons.expand_more,
      color: typeResentTransaction == TypeResentTransaction.green
          ? iconGreen
          : iconRed,
    );
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color:
                          typeResentTransaction == TypeResentTransaction.green
                          ? containerGreen
                          : containerRed,
                    ),
                    child: typeResentTransaction == TypeResentTransaction.green
                        ? iconExpandLess
                        : iconExpandMore,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title1,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: MyColors.brandDarkColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        color: MyColors.brandLightDarkColor,
                        fontSize: 9,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      if (typeResentTransaction == TypeResentTransaction.red)
                        Text(
                          '-',
                          style: TextStyle(
                            color:
                                typeResentTransaction ==
                                    TypeResentTransaction.green
                                ? blackColor
                                : iconRed,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      CurrencyFormatter(
                        amount: amount,
                        amountStyle: TextStyle(
                          color:
                              typeResentTransaction ==
                                  TypeResentTransaction.green
                              ? blackColor
                              : iconRed,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                        amountStyleSmall: TextStyle(
                          color:
                              typeResentTransaction ==
                                  TypeResentTransaction.green
                              ? blackColor
                              : iconRed,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}