import 'package:ecommerce_app_project/controller/auth/verifycode_controller.dart';
import 'package:ecommerce_app_project/core/constant/color.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Verification code',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(children: [
          const CustmTextTitleAuth(text: "Check Code"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text: "Please Enter The Digit Code Sent To admin@gmail.com"),
          const SizedBox(height: 25),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goToResetPassword();
            }, // end onSubmit
          ),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}
