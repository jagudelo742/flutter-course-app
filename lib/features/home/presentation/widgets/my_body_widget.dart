import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';

class MyBodyWidget extends StatelessWidget {
  final Function()? actionBtnCategory;
  final Function()? actionBtnResent;
  const MyBodyWidget({
    super.key,
    required this.actionBtnCategory,
    required this.actionBtnResent,
  });

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
              onPressed: actionBtnCategory,
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
              onPressed: actionBtnResent,
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