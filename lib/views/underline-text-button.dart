import 'package:flutter/material.dart';

class UnderlineTextButton extends StatelessWidget {
  const UnderlineTextButton(
      {Key? key, required this.text, this.fontSize, required this.onPressed})
      : super(key: key);

  final String text;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(text,
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w400,
              fontSize: fontSize,
            )));
  }
}
