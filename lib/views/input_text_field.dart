import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField(
      {Key? key,
      this.placeholderText,
      this.keyboardType,
      this.obscureText = false})
      : super(key: key);

  final TextInputType? keyboardType;
  final bool obscureText;
  final String? placeholderText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        cursorColor: Colors.white,
        cursorWidth: 1,
        style: const TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w200),
        decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 0.5)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 0.5)),
            labelText: placeholderText,
            labelStyle: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w200)));
  }
}
