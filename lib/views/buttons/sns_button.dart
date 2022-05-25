import 'package:flutter/material.dart';
import '../../constants.dart';
import 'shadow_button.dart';

enum SNSButtonStyle { facebook, twitter }

class SNSButton extends StatelessWidget {
  const SNSButton(
      {Key? key,
      required this.onPressed,
      this.style = SNSButtonStyle.facebook,
      this.size = 70})
      : super(key: key);

  final void Function()? onPressed;
  final SNSButtonStyle style;
  final double size;

  Image _getImage() {
    String assertURLString = "";
    double height = 0;
    switch (style) {
      case SNSButtonStyle.facebook:
        assertURLString = 'assets/images/facebook-logo.png';
        height = 27;
        break;
      case SNSButtonStyle.twitter:
        assertURLString = 'assets/images/twitter-logo.png';
        height = 20;
        break;
    }
    return Image.asset(
      assertURLString,
      height: height,
      fit: BoxFit.fitHeight,
      color: AppColors.mainColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ShadowButton(
        onPressed: onPressed, size: Size(size, size), child: _getImage());
  }
}
