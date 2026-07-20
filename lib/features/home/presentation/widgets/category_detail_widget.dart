import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';
import 'package:flutter_course/features/home/presentation/widgets/currency_formater.dart';

enum TypeCategoryDetail { up, down }

class CategoryDetail extends StatelessWidget {
  final TypeCategoryDetail typeCategoryDetail;
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
    required this.typeCategoryDetail,
  });

  @override
  Widget build(BuildContext context) {
    var iconUp = const Icon(
      Icons.expand_less,
      color: MyColors.brandSuccessColor,
    );
    var downColorContainer = MyColors.brandErrorColor;
    var iconDown = const Icon(
      Icons.expand_more,
      color: MyColors.brandOnErrorColor,
    );
    var upColorContainer = MyColors.brandSuccessColor;
    var percentDownColor = MyColors.brandOnErrorColor;
    var percentUpColor = MyColors.brandOnSuccessColor;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
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
                color: typeCategoryDetail == TypeCategoryDetail.up
                    ? upColorContainer
                    : downColorContainer,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  typeCategoryDetail == TypeCategoryDetail.up
                      ? iconUp
                      : iconDown,

                  //Icon(Icons.expand_less, color: MyColors.brandOnSuccessColor),
                  Text(
                    '$percent %',
                    style: TextStyle(
                      color: typeCategoryDetail == TypeCategoryDetail.up
                          ? percentUpColor
                          : percentDownColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}