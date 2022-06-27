import 'package:ecommerce_app_project_flutter/controller/auth/signup_controller.dart';
import 'package:ecommerce_app_project_flutter/core/constant/color.dart';
import 'package:ecommerce_app_project_flutter/core/functions/validinput.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('17'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<SignUpControllerImp>(builder: (controller) => Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            const SizedBox(height: 20),
            CustmTextTitleAuth(text: "10".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(text: "24".tr),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              isNumber: false,
              mycontroller: controller.username,
              hinttext: "23".tr,
              iconData: Icons.person_outline,
              labeltext: "20".tr,
              valid: (val) { 
                return validInupt(val!, 6, 12, "username");
              },
              // mycontroller: ,
            ),
            CustomTextFormAuth(
              isNumber: false,
              mycontroller: controller.email,
              hinttext: "12".tr,
              iconData: Icons.email_outlined,
              labeltext: "18".tr,
              valid: (val) { 
                return validInupt(val!, 5, 25, "email");
              },
              // mycontroller: ,
            ),
            CustomTextFormAuth(
              isNumber: true,
              mycontroller: controller.phone,
              hinttext: "22".tr,
              iconData: Icons.phone_android_outlined,
              labeltext: "21".tr,
              valid: (val) { 
                return validInupt(val!, 7, 11, "phone");
              },
              // mycontroller: ,
            ),
            CustomTextFormAuth(
              isNumber: false,
              mycontroller: controller.password,
              hinttext: "13".tr,
              iconData: Icons.lock_outline,
              labeltext: "19".tr, 
              valid: (val) { 
                return validInupt(val!, 5, 10, "password");
              },
              // mycontroller: ,
            ),
            CustomButtonAuth(
                text: "17".tr,
                onPressed: () {
                  controller.signUp();
                }),
            const SizedBox(height: 40),
            CustomTextSignUpOrSignIn(
              textone: "25".tr,
              texttwo: "26".tr,
              onTap: () {
                controller.goToSignIn();
              },
            ),
          ]),
        ),
      )),
    );
  }
}