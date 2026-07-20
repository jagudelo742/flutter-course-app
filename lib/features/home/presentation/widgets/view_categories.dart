import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';
import 'package:flutter_course/features/home/presentation/widgets/category_detail_widget.dart';

class ViewCategories extends StatelessWidget {
  const ViewCategories({super.key});

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
                Navigator.of(context).pushNamed('new-page');
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
              typeCategoryDetail: TypeCategoryDetail.up,
              pathToProductImage: 'assets/images/pizza.png',
              title: 'Food And Drink',
              amount: 2550,
              otherAmount: 123.23,
              percent: 1.8,
            ),
            CategoryDetail(
              typeCategoryDetail: TypeCategoryDetail.down,
              pathToProductImage: 'assets/images/healthcare.png',
              title: 'Health',
              amount: 3550,
              otherAmount: 1233.23,
              percent: 1.4,
            ),
            CategoryDetail(
              typeCategoryDetail: TypeCategoryDetail.up,
              pathToProductImage: 'assets/images/television.png',
              title: 'Tecnology',
              amount: 4970,
              otherAmount: 22200.23,
              percent: 1.9,
            ),
          ],
        ),
      ),
    );
  }
}