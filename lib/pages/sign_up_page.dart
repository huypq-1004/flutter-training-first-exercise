import 'package:conn_exion/views/buttons/text_shadow_button.dart';
import 'package:conn_exion/views/buttons/text_sns_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../views/underline-text-button.dart';
import '../views/logo_view.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  void _onSignInPressed() {
    Navigator.pop(context);
  }

  void _onSignUpWithFacebookPressed() {}

  void _onSignUpWithTwitterPressed() {}

  void _onSignUpPressed() {}

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.subColor, AppColors.mainColor])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    const LogoView(),
                    const SizedBox(
                      height: 100,
                    ),
                    TextSNSButton(
                        onPressed: _onSignUpWithFacebookPressed,
                        style: TextSNSButtonStyle.facebook,
                        title: Strings.signInWithFacebook),
                    const SizedBox(
                      height: 30,
                    ),
                    TextSNSButton(
                        onPressed: _onSignUpWithTwitterPressed,
                        style: TextSNSButtonStyle.twitter,
                        title: Strings.signInWithTwitter),
                    const SizedBox(
                      height: 30,
                    ),
                    TextShadowButton(
                      onPressed: _onSignUpPressed,
                      title: Strings.signUp,
                      size: const Size(350, 60),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    UnderlineTextButton(
                        text: Strings.alreadyRegistered,
                        fontSize: 13,
                        onPressed: _onSignInPressed)
                  ],
                ))));
  }
}
