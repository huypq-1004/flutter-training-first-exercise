import 'package:flutter/material.dart';

enum LabeledCheckboxContentAlignment { right, left }

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    Key? key,
    required this.labelText,
    required this.value,
    required this.onChanged,
    this.contentAlignment = LabeledCheckboxContentAlignment.left,
  }) : super(key: key);

  final String labelText;
  final bool value;
  final void Function(bool?)? onChanged;
  final LabeledCheckboxContentAlignment contentAlignment;

  MainAxisAlignment _getAlignment() {
    switch (contentAlignment) {
      case LabeledCheckboxContentAlignment.left:
        return MainAxisAlignment.start;
      case LabeledCheckboxContentAlignment.right:
        return MainAxisAlignment.end;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: _getAlignment(),
      children: [
        Transform.scale(
            scale: 0.9,
            child: Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                side: const BorderSide(color: Colors.white, width: 1),
                fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                  return Colors.orange;
                }),
                value: value,
                onChanged: onChanged)),
        Text(
          labelText,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),
        )
      ],
    );
  }
}
