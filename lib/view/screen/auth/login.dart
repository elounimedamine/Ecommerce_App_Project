import 'package:ecommerce_app_project/controller/auth/login_controller.dart';
import 'package:ecommerce_app_project/core/constant/color.dart';
import 'package:ecommerce_app_project/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app_project/view/widget/auth/textsignup.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(children: [
          const LogoAuth(),
          const SizedBox(height: 20),
          const CustmTextTitleAuth(text: "Welcome Back"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign In with your Email and Password \n OR Continue With Social Media"),
          const SizedBox(height: 25),
          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            //mycontroller: null,
          ),
          CustomTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            //mycontroller: null,
          ),
          InkWell(
              onTap: () {
                controller.goToForgetPassword();
              },
              child: const Text("Forget Password", textAlign: TextAlign.end)),
          const SizedBox(height: 10),
          CustomButtonAuth(
              text: "Sign In",
              style: const TextStyle(fontWeight: FontWeight.bold),
              onPressed: () {}),
          const SizedBox(height: 20),
          CustomTextSignUpOrSignIn(
            textone: " Don't have an account ? ",
            texttwo: " Sign Up ",
            onTap: () {
              controller.goToSignUp();
            },
          )
        ]),
      ),
    );
  }
}
