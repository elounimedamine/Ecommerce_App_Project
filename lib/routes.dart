import 'package:ecommerce_app_project/core/constant/routes.dart';
import 'package:ecommerce_app_project/view/screen/auth/login.dart';
import 'package:ecommerce_app_project/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onBoarding: (context) => const OnBoarding(),
};
