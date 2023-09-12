import 'package:flutter/material.dart';
import 'package:gamedesigner/colorpallete/pallete.dart';

class LoginButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final double horizontalPadding;
  const LoginButton({
    Key? key,
    required this.onTap,
    required this.label,
    this.horizontalPadding = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,

      style: TextButton.styleFrom(
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Pallete.iceWhite,
          fontSize: 17,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
