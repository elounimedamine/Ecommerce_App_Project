import 'package:ecommerce_app_project/core/localization/changelocal.dart';
import 'package:ecommerce_app_project/core/localization/translation.dart';
import 'package:ecommerce_app_project/core/services/services.dart';
import 'package:ecommerce_app_project/routes.dart';
import 'package:ecommerce_app_project/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'E-commerce Application',
      locale: controller.language,
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15)),
        primarySwatch: Colors.blue,
      ),
      home: const Language(), //OnBoarding(),
      routes: routes,
    );
  }
}
