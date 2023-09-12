import 'package:flutter/material.dart';
import 'package:gamedesigner/login/widgets/social_button.dart';
import 'package:gamedesigner/colorpallete/pallete.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              const SocialButton(
                iconpath: 'assets/images/logos/g_logo.svg',
                label: 'Create team with Goggle',
              ),
              const SocialButton(
                iconpath: 'assets/images/logos/g_logo.svg',
                label: 'Create team with Github',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
