import 'package:ecommerce_app_project/controller/auth/checkemail_controller.dart';
import 'package:ecommerce_app_project/core/constant/color.dart';
import 'package:ecommerce_app_project/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller =
        Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Check Email',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(children: [
          const CustmTextTitleAuth(text: "Success Sign Up"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Please Enter Your Email Address To Receive A Verification Code"),
          const SizedBox(height: 25),
          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            //mycontroller: null,
          ),
          CustomButtonAuth(
              text: "Check",
              onPressed: () {
                controller.goToSuccesSignUp();
              }),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}
