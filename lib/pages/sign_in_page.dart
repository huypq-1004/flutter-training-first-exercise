import 'package:flutter/material.dart';
import '../constants.dart';
import '../views/input_text_field.dart';
import '../views/labeled_checkbox.dart';
import '../views/buttons/text_shadow_button.dart';
import '../views/underline-text-button.dart';
import '../views/buttons/sns_button.dart';
import '../views/logo_view.dart';
import 'sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _rememberChecked = false;

  void _onCheckboxToggle(bool? newValue) {
    setState(() {
      _rememberChecked = newValue ?? false;
    });
  }

  void _onGetStartPressed() {}

  void _onFacebookLoginPressed() {}

  void _onTwitterLoginPressed() {}

  void _onForgotPasswordPressed() {}

  void _onSignUpPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignUpPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.subColor, AppColors.mainColor])),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 80,
                ),
                const LogoView(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  Strings.signIn,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 23),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                    child: Column(children: [
                      const InputTextField(
                          placeholderText: Strings.enterEmail,
                          keyboardType: TextInputType.emailAddress),
                      const InputTextField(
                        placeholderText: Strings.password,
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      LabeledCheckbox(
                        labelText: Strings.rememberPassword,
                        value: _rememberChecked,
                        onChanged: _onCheckboxToggle,
                        contentAlignment: LabeledCheckboxContentAlignment.right,
                      ),
                    ])),
                TextShadowButton(
                    onPressed: _onGetStartPressed, title: Strings.getStarted),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SNSButton(
                      onPressed: _onFacebookLoginPressed,
                      style: SNSButtonStyle.facebook,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    SNSButton(
                        onPressed: _onTwitterLoginPressed,
                        style: SNSButtonStyle.twitter)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                UnderlineTextButton(
                    text: Strings.forgotPassword,
                    fontSize: 13,
                    onPressed: _onForgotPasswordPressed)
              ],
            ),
            Container(
              color: Colors.black45,
              height: 84,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  Strings.dontHaveAccount,
                  style: TextStyle(
                      color: AppColors.subColor, fontWeight: FontWeight.w400),
                ),
                UnderlineTextButton(
                    text: Strings.signUp.toUpperCase(),
                    onPressed: _onSignUpPressed)
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
