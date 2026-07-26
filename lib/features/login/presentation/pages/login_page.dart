import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course/config/routes/app_routes.dart';
import 'package:flutter_course/core/design/colors.dart';
import 'package:flutter_course/core/design/copys.dart';
import 'package:flutter_course/core/design/radius.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const defaultInputBorder = InputBorder.none;
  var checkBoxState = false;

  static const defaultContainerInputDecoration = BoxDecoration(
    color: MyColors.brandSecondaryColor,
    borderRadius: BorderRadius.all(MyRadius.small),
  );

  static const defaultInputLabelTheme = TextStyle(
    fontSize: 13,
    color: MyColors.brandLightDarkColor,
    fontWeight: FontWeight.normal,
  );

  late String userName;
  late BoxDecoration userContainerDecoration;
  late BoxDecoration passContainerDecoration;

  final activeContainerInputDecoration = BoxDecoration(
    border: Border.all(color: MyColors.brandPrimaryColor, width: 2),
    color: MyColors.brandSecondaryColor,
    borderRadius: BorderRadius.all(MyRadius.small),
  );
  final _formLoginPage = GlobalKey<FormState>();
  var userInputController = TextEditingController();
  @override
  void initState() {
    super.initState();
    userContainerDecoration = defaultContainerInputDecoration;
    passContainerDecoration = defaultContainerInputDecoration;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 100, 16, 0),
          child: Column(
            children: [
              Text(
                AppCopys.hello,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 21, 16, 50),
                child: Text(
                  AppCopys.lorem,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Form(
                key: _formLoginPage,
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      padding: const EdgeInsets.only(left: 24, bottom: 4),
                      decoration: userContainerDecoration,
                      child: TextFormField(
                        controller: userInputController,
                        style: Theme.of(context).textTheme.labelSmall,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ErrorMessages.userError;
                          }
                          if(value.length >= 10){
                            return ErrorMessages.userErrorLength;
                          }
                          return null;
                        },
                        onSaved: (newValue) {
                          userName = newValue!;
                        },
                        onTap: () {
                          setState(() {
                            userContainerDecoration = activeContainerInputDecoration;
                            passContainerDecoration = defaultContainerInputDecoration;
                          });
                        },
                         onTapOutside: (event) {
                          setState(() {
                            userContainerDecoration = defaultContainerInputDecoration;
                          });
                        },
                        decoration: const InputDecoration(
                          border: defaultInputBorder,
                          label: Text(AppCopys.userInputLabel),
                          labelStyle: defaultInputLabelTheme,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 24),
                      height: 70,
                      padding: const EdgeInsets.only(left: 24, bottom: 4),
                      decoration: passContainerDecoration,
                      child: TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ErrorMessages.userPass;
                          }
                          return null;
                        },
                        onTap: () {
                          setState(() {
                            passContainerDecoration = activeContainerInputDecoration;
                            userContainerDecoration = defaultContainerInputDecoration;
                          });
                        },
                        onTapOutside: (event) {
                          setState(() {
                            passContainerDecoration = defaultContainerInputDecoration;
                          });
                        },
                        decoration: const InputDecoration(
                          border: defaultInputBorder,
                          label: Text(AppCopys.userPswInputLabel),
                          labelStyle: defaultInputLabelTheme,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
                          value: checkBoxState,
                          onChanged: (value) {
                            setState(() {
                              checkBoxState = !checkBoxState;
                            });
                          },
                          checkColor: MyColors.brandLightColor,
                          activeColor: MyColors.brandPrimaryColor,
                        ),
                        const Expanded(child: Text(AppCopys.rememberMe)),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            AppCopys.recoveryPassword,
                            style: defaultInputLabelTheme,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32, bottom: 48),
                      height: 64,
                      width: 394,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formLoginPage.currentState!.validate()) {
                            //_formLoginPage.currentState!.save();
                            userName = userInputController.text;
                            Navigator.of(
                              context,
                            ).pushReplacementNamed('home', arguments: userName);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.brandPrimaryColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(MyRadius.small),
                          ),
                        ),
                        child: Text(
                          'Log In',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            color: MyColors.brandLightColorBorder,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.0),
                          child: Text(AppCopys.orContinue),
                        ),
                        Expanded(
                          child: Divider(
                            color: MyColors.brandLightColorBorder,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 42),
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
                    SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(AppCopys.notAMember),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).pushNamed(AppRoutes.siginPage);
                            });
                          },
                          child: const Text(
                            AppCopys.registerNow,
                            style: TextStyle(
                              fontSize: 13,
                              color: MyColors.brandPrimaryColor,
                            ),
                          ),
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
