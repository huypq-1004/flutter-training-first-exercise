import 'package:flutter/material.dart';
import 'package:conn_exion/constants.dart';

class LogoView extends StatelessWidget {
  const LogoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 100,
          fit: BoxFit.cover,
        ),
        RichText(
          text: const TextSpan(
            text: 'CONN',
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: AppColors.mainColor),
            children: <TextSpan>[
              TextSpan(text: 'EXION', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        const Text(
          Strings.slogan,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
