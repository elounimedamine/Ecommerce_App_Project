import 'package:ecommerce_app_project_flutter/core/constant/routes.dart';
import 'package:ecommerce_app_project_flutter/core/localization/changelocal.dart';
import 'package:ecommerce_app_project_flutter/view/widget/language/custombuttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr,
                  style: Theme.of(context)
                      .textTheme
                      .headline1), //pour choisir dynamiquement la langue
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changeLang("ar");
                    Get.toNamed(AppRoute.onBoarding); //pour revenir à la page pour modifier la langue
                  }),
              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () {
                    controller.changeLang("en");
                    Get.toNamed(AppRoute.onBoarding); //pour revenir à la page pour modifier la langu
                  }),
            ],
          )),
    );
  }
}
