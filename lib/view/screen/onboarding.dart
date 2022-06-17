import 'package:ecommerce_app_project/core/constant/color.dart';
import 'package:ecommerce_app_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget{
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(

          itemCount: onBoardingList.length,
          
          // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
          itemBuilder: (Context, i) => Column(
            children: [
              Text(onBoardingList[i].title!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(height: 80),
              Image.asset(onBoardingList[i].image! , width: 200 , height: 250 , fit: BoxFit.fill),
              const SizedBox(height: 80),

              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(onBoardingList[i].body!, textAlign: TextAlign.center, style: const TextStyle(height: 2 , color: AppColor.grey , fontWeight: FontWeight.bold , fontSize: 17)),
              )

            ],))));
  }
}