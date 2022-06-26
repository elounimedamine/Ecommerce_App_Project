import 'package:ecommerce_app_project_flutter/controller/auth/verifycodesignup_controller.dart';
import 'package:ecommerce_app_project_flutter/core/constant/color.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller = Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text("39".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustmTextTitleAuth(text: "40".tr),
          const SizedBox(height: 10),
          CustomTextBodyAuth(
              text:"41".tr
          ),
          const SizedBox(height: 15),
            OtpTextField(
              
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor:const  Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                     controller.goToSuccesSignUp() ; 
                }, // end onSubmit
              ), 
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}