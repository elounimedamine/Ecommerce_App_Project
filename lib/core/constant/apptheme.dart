import 'package:ecommerce_app_project_flutter/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeArabic = ThemeData(
        fontFamily: "Cairo",
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
            headline2: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColor.black),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15),
            bodyText2: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontSize: 14)),
        primarySwatch: Colors.blue,
      );

ThemeData themeEnglish = ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
            headline2: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColor.black),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15),
            bodyText2: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontSize: 14)),
        primarySwatch: Colors.blue,
      );