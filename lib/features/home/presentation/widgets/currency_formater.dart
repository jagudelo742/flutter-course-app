import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrencyFormatter extends StatelessWidget {
  final double amount;
  final TextStyle? amountStyle;
  final TextStyle? amountStyleSmall;
  final EdgeInsets? padding;
  const CurrencyFormatter({
    super.key,
    required this.amount,
    this.amountStyle,
    this.amountStyleSmall,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(
      customPattern: '#,### \u00a4',
      symbol: '',
      decimalDigits: 2,
      locale: 'es',
    );
    final String convertedMoneyToString = formatter.format(amount);
    final splitConvertedValues = convertedMoneyToString.split(',');
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: padding ?? const EdgeInsets.only(right: 5, top: 2),
          child: Text('\$', style: amountStyleSmall),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: splitConvertedValues[0], style: amountStyle),
              TextSpan(
                text: ',${splitConvertedValues[1]}',
                style: amountStyleSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}