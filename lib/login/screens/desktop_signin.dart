import 'package:flutter/material.dart';
import 'package:gamedesigner/login/widgets/big_button.dart';
import 'package:gamedesigner/login/widgets/sign_up_field.dart';
import 'package:gamedesigner/login/widgets/social_button.dart';
import 'package:gamedesigner/login/widgets/login_button.dart';
import 'package:gamedesigner/colorpallete/pallete.dart';

class DesktopLogin extends StatelessWidget {
  final Function()? registerTap;
  const DesktopLogin({
    Key? key,
    required this.registerTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //delete background Color later
      backgroundColor: Pallete.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/backgrounds/signin_balls.png'),
              const Text(
                'Sign in.',
                style: TextStyle(
                  color: Pallete.iceWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Welcome back, you\u0027ve been missed!',
                style: TextStyle(
                  color: Pallete.iceWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                children: <Widget>[
                  SocialButton(
                    iconpath: 'assets/images/logos/g_logo.svg',
                    label: '',
                    onTap: () {},
                  ),
                  const SizedBox(width: 30),
                  SocialButton(
                    iconpath: 'assets/images/icons/github.svg',
                    label: 'Sign in with Github',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(
                  color: Pallete.iceWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 15),
              const SizedBox(height: 15),
              const SignUpField(
                hintText: 'Email',
                blurText: false,
              ),
              const SizedBox(height: 10),
              const SignUpField(
                hintText: 'Password',
                blurText: true,
              ),
              const SizedBox(height: 30),
              LoginButton(
                label: 'Login',
                onTap: () {},
                horizontalPadding: 180,
              ),
              const SizedBox(height: 15),
              BigButton(
                iconpath: 'assets/images/icons/plus-square.svg',
                label: 'Create new account',
                onTap: registerTap,
                horizontalPadding: 110,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
