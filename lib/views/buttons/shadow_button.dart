import 'package:flutter/material.dart';

class ShadowButton extends StatelessWidget {
  const ShadowButton(
      {Key? key,
      required this.onPressed,
      required this.size,
      required this.child})
      : super(key: key);

  final void Function()? onPressed;
  final Widget child;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(size.height / 2),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 15)]),
      child: TextButton(
          style: TextButton.styleFrom(
              fixedSize: size,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size.height / 2))),
          onPressed: onPressed,
          child: child),
    );
  }
}
