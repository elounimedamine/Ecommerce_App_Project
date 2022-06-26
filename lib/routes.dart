import 'package:ecommerce_app_project/core/constant/routes.dart';
import 'package:ecommerce_app_project/view/screen/auth/checkemail.dart';
import 'package:ecommerce_app_project/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_app_project/view/screen/auth/login.dart';
import 'package:ecommerce_app_project/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_app_project/view/screen/auth/signup.dart';
import 'package:ecommerce_app_project/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerce_app_project/view/screen/auth/success_signup.dart';
import 'package:ecommerce_app_project/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce_app_project/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.checkemail: (context) => const CheckEmail(), 

  //OnBoarding
  AppRoute.onBoarding: (context) => const OnBoarding(), 
};
