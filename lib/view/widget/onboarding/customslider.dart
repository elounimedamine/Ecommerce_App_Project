// ignore_for_file: avoid_print

import 'package:ecommerce_app_project/controller/onboarding_controller.dart';
import 'package:ecommerce_app_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController, //pour la navigation
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    onBoardingList[i].image!,
                    //width: 200,
                    //height: 230,
                    //fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 80),
                  Text(onBoardingList[i].title!,
                      style: Theme.of(context).textTheme.headline1), //appel
                  const SizedBox(height: 20),
                  Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        onBoardingList[i].body!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1, //appel
                      )),
                ],
              ),
            ));
  }
}
