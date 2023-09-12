import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gamedesigner/colorpallete/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconpath;
  final String label;
  const SocialButton({Key? key, required this.iconpath, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconpath,
        width: 25,
        colorFilter: const ColorFilter.mode(
          Pallete.whiteColor, 
          BlendMode.srcIn,
          ),
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Pallete.whiteColor,
          fontSize: 17,
        ),
      ),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 100),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
