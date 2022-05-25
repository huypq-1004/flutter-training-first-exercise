import 'package:conn_exion/views/gradient-text.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'text_shadow_button.dart';

enum TextSNSButtonStyle { facebook, twitter }

class TextSNSButton extends StatelessWidget {
  const TextSNSButton(
      {Key? key,
      required this.onPressed,
      required this.style,
      required this.title,
      this.size = const Size(350, 60)})
      : super(key: key);

  final void Function()? onPressed;
  final TextSNSButtonStyle style;
  final String title;
  final Size size;

  Widget _getImage() {
    String assetURLString = "";
    double height = 0;
    switch (style) {
      case TextSNSButtonStyle.facebook:
        assetURLString = 'assets/images/facebook-logo.png';
        height = 27;
        break;
      case TextSNSButtonStyle.twitter:
        assetURLString = 'assets/images/twitter-logo.png';
        height = 20;
        break;
    }
    return GradientImage(
        image: Image.asset(
          assetURLString,
          height: height,
          color: AppColors.mainColor,
        ),
        gradient: AppColors.defaultVerticalGradient);
  }

  @override
  Widget build(BuildContext context) {
    return TextShadowButton(
      onPressed: onPressed,
      size: size,
      title: title,
      image: _getImage(),
      textGradient: AppColors.defaultVerticalGradient,
    );
  }
}
