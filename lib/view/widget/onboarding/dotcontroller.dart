import 'package:ecommerce_app_project_flutter/controller/onboarding_controller.dart';
import 'package:ecommerce_app_project_flutter/core/constant/color.dart';
import 'package:ecommerce_app_project_flutter/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Spacer(flex: 1); //espacement entre les 4 points et le texte précédent.
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                  duration: const Duration(milliseconds: 900),
                  width: controller.currentPage == index ? 20 : 5, //pour modifier la largueur du point de controller
                  height: 6,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                ))
      ],
    ));
  }
}
