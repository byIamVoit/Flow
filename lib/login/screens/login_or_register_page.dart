import 'package:flutter/material.dart';
import 'package:gamedesigner/login/screens/dekstop_signup.dart';
import 'package:gamedesigner/login/screens/desktop_signin.dart';
import 'package:gamedesigner/login/screens/mobile_login.dart';
import 'package:gamedesigner/login/screens/mobile_signup.dart';
import 'package:gamedesigner/responsive/widget/responsive_layout.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({Key? key}) : super(key: key);

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Scaffold(
        body: ResponsiveLayout(
            mobileBody: MobileLogin(
              registerTap: togglePages,
            ), 
            desktopBody: DesktopLogin(
              registerTap: togglePages,
            )),
      );
    }else{
      return Scaffold(
        body: ResponsiveLayout(
            mobileBody: MobileSignUp(
              backTap: togglePages,
            ), 
            desktopBody: DesktopSignUp(
              backTap: togglePages,
            )),
      );
    }
  }
}
