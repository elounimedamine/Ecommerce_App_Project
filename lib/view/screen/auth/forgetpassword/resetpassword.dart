import 'package:ecommerce_app_project/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce_app_project/core/constant/color.dart';
import 'package:ecommerce_app_project/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widget/auth/customtextformauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Reset Password',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(children: [
          const CustmTextTitleAuth(text: "New Password"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(text: "Please Enter New Password"),
          const SizedBox(height: 25),
          CustomTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            //mycontroller: null,
          ),
          CustomTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Re Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            //mycontroller: null,
          ),
          CustomButtonAuth(
              text: "Save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              }),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}
