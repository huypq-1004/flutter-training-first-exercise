import 'package:flutter/material.dart';

class GradientImage extends StatelessWidget {
  const GradientImage({
    Key? key,
    required this.image,
    required this.gradient,
  }) : super(key: key);

  final Image image;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: image,
    );
  }
}
