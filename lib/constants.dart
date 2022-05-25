import 'package:flutter/material.dart';

class Strings {
  static const slogan = 'Find and Meet people around\nyou to find LOVE';
  static const signIn = 'SIGN IN';
  static const enterEmail = 'Enter Email';
  static const password = 'Password';
  static const rememberPassword = 'Remember Password';
  static const getStarted = 'GET STARTED';
  static const forgotPassword = 'FORGOT PASSWORD?';
  static const dontHaveAccount = "DON'T HAVE ACCOUNT?";
  static const signUp = 'Sign Up';
  static const alreadyRegistered = 'ALREADY REGISTERED? SIGN IN';
  static const signInWithFacebook = 'Sign in with Facebook';
  static const signInWithTwitter = 'Sign in with Twitter';
}

class AppColors {
  static const mainColor = Color.fromRGBO(250, 58, 110, 1);
  static const subColor = Color.fromRGBO(252, 118, 71, 1);
  static const defaultVerticalGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [AppColors.subColor, AppColors.mainColor]);
  static const defaultHorizontalGradient = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [AppColors.subColor, AppColors.mainColor]);
}
