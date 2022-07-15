import 'package:ecommerce_app_project_flutter/binding.dart';
import 'package:ecommerce_app_project_flutter/core/localization/changelocal.dart';
import 'package:ecommerce_app_project_flutter/core/localization/translation.dart';
import 'package:ecommerce_app_project_flutter/core/services/services.dart';
import 'package:ecommerce_app_project_flutter/routes.dart';
import 'package:ecommerce_app_project_flutter/view/screen/language.dart';
//import 'package:ecommerce_app_project_flutter/view/screen/language.dart';
//import 'package:ecommerce_app_project_flutter/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'E-commerce Application',
      locale: controller.language,
      theme: controller.appTheme,
      home:
          const Language(), //Test(),//Login(), //Test(), //OnBoarding(), //Language(),,
      initialBinding: MyBinding(),
      routes: routes,
    );
  }
}
