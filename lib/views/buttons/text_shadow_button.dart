import 'package:conn_exion/views/gradient-text.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'shadow_button.dart';

class TextShadowButton extends StatelessWidget {
  const TextShadowButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.size = const Size(300, 60),
      this.image,
      this.textGradient})
      : super(key: key);

  final void Function()? onPressed;
  final String title;
  final Size size;
  final Widget? image;
  final Gradient? textGradient;

  final TextStyle textStyle = const TextStyle(
      color: AppColors.mainColor, fontSize: 18, fontWeight: FontWeight.w600);

  Widget _getText() {
    if (textGradient == null) {
      return Text(
        title,
        style: textStyle,
      );
    } else {
      return GradientText(
        text: title,
        gradient: textGradient!,
        style: textStyle,
      );
    }
  }

  double? _getImageHeight() {
    if (image is Image) {
      Image image = this.image as Image;
      return image.height;
    }
    if (image is GradientImage) {
      GradientImage gradientImage = image as GradientImage;
      return gradientImage.image.height;
    }
    return 0;
  }

  Widget _getChild() {
    if (image == null) {
      return _getText();
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
                  height: _getImageHeight(),
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
            child: _getText(),
          )
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ShadowButton(onPressed: onPressed, size: size, child: _getChild());
  }
}
