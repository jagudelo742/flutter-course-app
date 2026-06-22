import 'package:flutter/material.dart';
import 'package:flutter_course/app.dart';
import 'package:flutter_course/design/colors.dart';
import 'package:flutter_course/design/radius.dart';
import 'package:flutter_course/widgets/home_app_bar_title.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 97,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            bottomLeft: MyRadius.small,
            bottomRight: MyRadius.small,
          ),
        ),
        backgroundColor: MyColors.brandLightColor,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(16, 45, 16, 12),
          child: HomeAppBarTitle(),
        ),
      ),
      body: Column(
        children: [const TopBodyWidget(), MyBodyWidget(), BodyFooter()],
      ),
    );
  }
}

class BodyFooter extends StatelessWidget {
  const BodyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(color: MyColors.brandSecondaryColor),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextButton(
              onPressed: () {
                print('Soy ver todo');
              },
              style: TextButton.styleFrom(alignment: Alignment.topRight),
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
            CategoryDetail(
              pathToProductImage: 'assets/images/pizza.png',
              title: 'Food And Drink',
              amount: 2550,
              otherAmount: 123.23,
              percent: 1.8,
            ),
            CategoryDetail(
              pathToProductImage: 'assets/images/healthcare.png',
              title: 'Health',
              amount: 3550,
              otherAmount: 1233.23,
              percent: 1.4,
            ),
            CategoryDetail(
              pathToProductImage: 'assets/images/television.png',
              title: 'Tecnology',
              amount: 4970,
              otherAmount: 22200.23,
              percent: 1.9,
            ),
            //CategoryDetail(),
            //CategoryDetail(),
          ],
        ),
      ),
    );
  }
}

class CategoryDetail extends StatelessWidget {
  final String pathToProductImage;
  final String title;
  final double amount;
  final double otherAmount;
  final double percent;
  const CategoryDetail({
    super.key,
    required this.pathToProductImage,
    required this.amount,
    required this.otherAmount,
    required this.percent,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: MyColors.brandLightColor,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          Container(
            height: 79,
            width: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: MyColors.brandSecondaryColor,
            ),
            child: Container(
              margin: EdgeInsets.all(12),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(pathToProductImage)),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: MyColors.brandDarkColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto',
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '\$ $amount Today',
                    style: TextStyle(
                      color: MyColors.brandLightDarkColor,
                      fontFamily: 'Roboto',
                      fontSize: 10,
                    ),
                  ),
                  CurrencyFormatter(
                    amount: otherAmount,
                    padding: const EdgeInsets.only(top: 4, right: 2),
                    amountStyle: TextStyle(
                      color: MyColors.brandPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    amountStyleSmall: TextStyle(
                      color: MyColors.brandPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            //padding : EdgeInsets.all(8),
            width: 60,
            margin: const EdgeInsets.only(bottom: 70),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: MyColors.brandSuccessColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.expand_less, color: MyColors.brandOnSuccessColor),
                Text(
                  '$percent %',
                  style: TextStyle(color: MyColors.brandOnSuccessColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyBodyWidget extends StatelessWidget {
  const MyBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.brandSecondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  ' Categories',
                  style: TextStyle(
                    color: MyColors.brandDarkColor,
                    fontFamily: 'Roboto',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.brandLightColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  ' Resent Transactions',
                  style: TextStyle(
                    color: MyColors.brandDarkColor,
                    fontFamily: 'Roboto',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
                    fontFamily: 'RobotoMono-Italic',
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


// 1:03:11