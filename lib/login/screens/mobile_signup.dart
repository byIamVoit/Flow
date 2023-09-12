import 'package:flutter/material.dart';
import 'package:gamedesigner/login/widgets/login_button.dart';
import 'package:gamedesigner/login/widgets/sign_up_field.dart';
import 'package:gamedesigner/login/widgets/social_button.dart';
import 'package:gamedesigner/colorpallete/pallete.dart';

class MobileSignUp extends StatelessWidget {
  final Function()? backTap;
  const MobileSignUp({
    Key? key,
    required this.backTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/backgrounds/signin_balls.png'),
              const Text(
                'Sign Up.',
                style: TextStyle(
                  color: Pallete.iceWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Let\u0027s get started, creating new worlds!',
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
                buttonWidth: 320,
              ),
              const SizedBox(height: 10),
              const SignUpField(
                hintText: 'Password',
                blurText: true,
                buttonWidth: 320,
              ),
              const SizedBox(height: 30),
              LoginButton(
                label: 'Login',
                onTap: () {},
                horizontalPadding: 140,
              ),
              const SizedBox(height: 15),
              LoginButton(
                label: 'get back',
                onTap: backTap,
                horizontalPadding: 130,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
