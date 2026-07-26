import 'package:flutter/material.dart';
import 'package:flutter_course/config/routes/app_routes.dart';
import 'package:flutter_course/core/design/colors.dart';
import 'package:flutter_course/core/design/copys.dart';
import 'package:flutter_course/core/design/radius.dart';

class SigInPage extends StatefulWidget {
  const SigInPage({super.key});

  @override
  State<SigInPage> createState() => _SigInPageState();
}

class _SigInPageState extends State<SigInPage> {
  static const defaultInputBorder = InputBorder.none;

  var checkBoxState = false;

  static const defaultInputContainer = BoxDecoration(
    color: MyColors.brandSecondaryColor,
    borderRadius: BorderRadius.all(MyRadius.small),
  );

  final activeContainerInputDecoration = BoxDecoration(
    border: Border.all(color: MyColors.brandPrimaryColor, width: 2),
    color: MyColors.brandSecondaryColor,
    borderRadius: BorderRadius.all(MyRadius.small),
  );

  static const defaultInputLabelTheme = TextStyle(
    fontSize: 13,
    color: MyColors.brandLightDarkColor,
    fontWeight: FontWeight.normal,
  );

  static const defaultTextButton = TextStyle(
    fontSize: 13,
    color: MyColors.brandPrimaryColor,
    fontWeight: FontWeight.bold,
  );

  final _formRegisterPage = GlobalKey<FormState>();

  late BoxDecoration userContainerDecoration;
  late BoxDecoration passContainerDecoration;
  late BoxDecoration nameContainerDecoration;
  @override
  void initState() {
    super.initState();
    userContainerDecoration = defaultInputContainer;
    passContainerDecoration = defaultInputContainer;
    nameContainerDecoration = defaultInputContainer;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 60, 16, 0),
          child: Column(
            children: [
              Row(
                children: [
                  BoxIcon(
                    functionIcon: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    icon: Icons.arrow_back,
                    colorBorder: MyColors.brandSecondaryColor,
                    colorIcon: MyColors.brandPrimaryColor,
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Text(
                    AppCopys.sigIn,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      AppCopys.lorem,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: MyColors.brandLightDarkColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 189,
                    height: 69,
                    decoration: const BoxDecoration(
                      color: MyColors.brandSecondaryColor,
                      borderRadius: BorderRadius.all(MyRadius.small),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage('assets/images/google.png'),
                          width: 30,
                        ),
                        SizedBox(width: 12),
                        Text(
                          AppCopys.google,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: MyColors.brandLightDarkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 189,
                    height: 69,
                    decoration: const BoxDecoration(
                      color: MyColors.brandSecondaryColor,
                      borderRadius: BorderRadius.all(MyRadius.small),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage('assets/images/facebook.png'),
                          width: 30,
                        ),
                        SizedBox(width: 12),
                        Text(
                          AppCopys.facebook,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: MyColors.brandLightDarkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: MyColors.brandLightColorBorder,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.0),
                    child: Text(
                      AppCopys.or,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: MyColors.brandLightColorBorder,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              Form(
                key: _formRegisterPage,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      padding: EdgeInsets.only(left: 24, bottom: 4),
                      height: 70,
                      decoration: userContainerDecoration,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text(AppCopys.userInputLabel),
                          labelStyle: defaultInputLabelTheme,
                          border: defaultInputBorder,
                        ),
                        onTap: () {
                          setState(() {
                            userContainerDecoration =
                                activeContainerInputDecoration;
                            passContainerDecoration = defaultInputContainer;
                            nameContainerDecoration = defaultInputContainer;
                          });
                        },
                        onTapOutside: (event) {
                          setState(() {
                            userContainerDecoration = defaultInputContainer;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      padding: EdgeInsets.only(left: 24, bottom: 4),
                      height: 70,
                      decoration: nameContainerDecoration,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text(AppCopys.name),
                          labelStyle: defaultInputLabelTheme,
                          border: defaultInputBorder,
                        ),
                        onTap: () {
                          setState(() {
                            userContainerDecoration = defaultInputContainer;
                            passContainerDecoration = defaultInputContainer;
                            nameContainerDecoration =
                                activeContainerInputDecoration;
                          });
                        },
                        onTapOutside: (event) {
                          nameContainerDecoration = defaultInputContainer;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      padding: EdgeInsets.only(left: 24, bottom: 4),
                      height: 70,
                      decoration: passContainerDecoration,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text(AppCopys.recoveryPassword),
                          labelStyle: defaultInputLabelTheme,
                          border: defaultInputBorder,
                        ),
                        onTap: () {
                          setState(() {
                            userContainerDecoration = defaultInputContainer;
                            passContainerDecoration =
                                activeContainerInputDecoration;
                            nameContainerDecoration = defaultInputContainer;
                          });
                        },
                        onTapOutside: (event) {
                          passContainerDecoration = defaultInputContainer;
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: checkBoxState,
                          onChanged: (onChanged) {
                            setState(() {
                              checkBoxState = !checkBoxState;
                            });
                          },
                        ),
                        Text(
                          AppCopys.labelTerms,
                          style: defaultInputLabelTheme,
                        ),
                        Text(AppCopys.terms, style: defaultTextButton),
                        Text(AppCopys.and, style: defaultInputLabelTheme),
                        Text(AppCopys.privacy, style: defaultTextButton),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32, bottom: 48),
                      height: 64,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          print('this is a get started buttom');
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.brandPrimaryColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(MyRadius.small),
                          ),
                        ),
                        child: Text(
                          AppCopys.getStarted,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    ),
                    Divider(),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppCopys.footerMessage,
                          style: defaultInputLabelTheme,
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(
                            context,
                          ).pushReplacementNamed(AppRoutes.loginPage),
                          child: Text(AppCopys.logIn, style: defaultTextButton),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BoxIcon extends StatelessWidget {
  final IconData icon;
  final Color colorBorder;
  final Color colorIcon;
  final Function()? functionIcon;
  const BoxIcon({
    super.key,
    required this.icon,
    required this.colorBorder,
    required this.colorIcon,
    required this.functionIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: colorBorder),
        shape: BoxShape.rectangle,
      ),
      margin: const EdgeInsets.only(top: 8),
      child: IconButton(
        onPressed: functionIcon,
        icon: Icon(icon),
        color: colorIcon,
      ),
    );
  }
}
