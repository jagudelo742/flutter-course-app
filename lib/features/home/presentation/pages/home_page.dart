import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';
import 'package:flutter_course/core/design/radius.dart';
import 'package:flutter_course/features/home/presentation/widgets/view_categories.dart';
import 'package:flutter_course/features/home/presentation/widgets/home_app_bar_title.dart';
import 'package:flutter_course/features/home/presentation/widgets/my_body_widget.dart';
import 'package:flutter_course/features/home/presentation/widgets/resent_transactions.dart';
import 'package:flutter_course/features/home/presentation/widgets/top_body_widget.dart';

class HomePage extends StatefulWidget {
  final String userName;
  const HomePage({super.key, required this.userName});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget currentDetailWidget = const ViewCategories();
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
          child: HomeAppBarTitle(userName: widget.userName),
        ),
      ),
      body: Column(
        children: [
          const TopBodyWidget(),
          MyBodyWidget(
            actionBtnCategory: () {
              setState(() {
                currentDetailWidget = ViewCategories();
              });
            },
            actionBtnResent: () {
              setState(() {
                currentDetailWidget = ResentTransactions();
              });
            },
          ),
          currentDetailWidget,
        ],
      ),
    );
  }
}
