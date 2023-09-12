import 'package:flutter/material.dart';
import 'package:gamedesigner/colorpallete/pallete.dart';

class SignUpField extends StatelessWidget {
  final String hintText;
  final double buttonWidth;
  final bool blurText;
  const SignUpField({
    Key? key,
    required this.hintText,
    required this.blurText,
    this.buttonWidth = 400.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: buttonWidth),
      child: TextFormField(
        obscureText: blurText,
        style: const TextStyle(color: Pallete.babyblue),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.babyblue,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle:
              const TextStyle(fontSize: 10, color: Pallete.backgroundText),
        ),
      ),
    );
  }
}
