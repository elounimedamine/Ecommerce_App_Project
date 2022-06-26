import 'package:ecommerce_app_project_flutter/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce_app_project_flutter/core/constant/color.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('14'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
            CustmTextTitleAuth(text: '27'.tr),
          const SizedBox(height: 10),
            CustomTextBodyAuth(
            // please Enter Your Email Address To Recive A verification code
              text:
                  '29'.tr),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "12".tr,
            iconData: Icons.email_outlined,
            labeltext: "18".tr,
            // mycontroller: ,
          ),
          CustomButtonAuth(text: '30'.tr, onPressed: () {
            controller.goToVerifyCode(); 
          }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}