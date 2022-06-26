import 'package:ecommerce_app_project_flutter/controller/auth/login_controller.dart';
import 'package:ecommerce_app_project_flutter/core/constant/color.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const LogoAuth(),
          const SizedBox(height: 20),
            CustmTextTitleAuth(text: "10".tr),
          const SizedBox(height: 10),
            CustomTextBodyAuth(
              text:
                  "11".tr),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "12".tr,
            iconData: Icons.email_outlined,
            labeltext: "18".tr,
            // mycontroller: ,
          ),
          CustomTextFormAuth(
            mycontroller: controller.password,
            hinttext: "13".tr,
            iconData: Icons.lock_outline,
            labeltext: "19".tr,
            // mycontroller: ,
          ),
          InkWell(
            onTap: () {
              controller.goToForgetPassword();
            },
            child:   Text(
              "14".tr,
              textAlign: TextAlign.right,
            ),
          ),
          CustomButtonAuth(text: "15".tr, onPressed: () {}),
          const SizedBox(height: 40),
          CustomTextSignUpOrSignIn(
            textone: "16".tr,
            texttwo: "17".tr,
            onTap: () {
              controller.goToSignUp();
            },
          )
        ]),
      ),
    );
  }
}