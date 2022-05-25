import 'package:flutter/material.dart';
import '../../constants.dart';
import 'shadow_button.dart';

class TextShadowButton extends StatelessWidget {
  const TextShadowButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.size = const Size(300, 60),
      this.image})
      : super(key: key);

  final void Function()? onPressed;
  final String title;
  final Size size;
  final Image? image;

  Widget _getChild() {
    if (image == null) {
      return Text(
        title,
        style: const TextStyle(
            color: AppColors.mainColor,
            fontSize: 18,
            fontWeight: FontWeight.w600),
      );
    } else {
      return Stack(
        children: [
          Positioned(
              child: Center(
                  child: Row(
            children: [
              const SizedBox(
                width: 3,
              ),
              Center(
                child: SizedBox(
                  width: 42,
                  height: image!.height,
                  child: image,
                ),
              ),
              Container(
                height: 30,
                width: 1,
                color: AppColors.mainColor,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ))),
          Center(
              child: Text(
            title,
            style: const TextStyle(
                color: AppColors.mainColor,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ))
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ShadowButton(onPressed: onPressed, size: size, child: _getChild());
  }
}
