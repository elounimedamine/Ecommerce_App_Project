import 'package:ecommerce_app_project/controller/auth/signup_controller.dart';
import 'package:ecommerce_app_project/core/constant/color.dart';
import 'package:ecommerce_app_project/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign Up',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(children: [
          const CustmTextTitleAuth(text: "Welcome Back"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign Up with your Email and Password \n OR Continue With Social Media"),
          const SizedBox(height: 25),
          CustomTextFormAuth(
            mycontroller: controller.username,
            hinttext: "Enter Your Username",
            iconData: Icons.person_outline,
            labeltext: "Username",
            //mycontroller: null,
          ),
          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            //mycontroller: null,
          ),
          CustomTextFormAuth(
            mycontroller: controller.phone,
            hinttext: "Enter Your Phone",
            iconData: Icons.phone_android_outlined,
            labeltext: "Phone",
            //mycontroller: null,
          ),
          CustomTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            //mycontroller: null,
          ),
          CustomButtonAuth(
              text: "Sign Up",
              onPressed: () {
                controller.signUp();
              }),
          const SizedBox(height: 20),
          CustomTextSignUpOrSignIn(
            textone: " Have an account ? ",
            texttwo: " Sign In ",
            onTap: () {
              controller.goToSignIn();
            },
          ),
        ]),
      ),
    );
  }
}
