import 'package:ecommerce_app_project_flutter/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;

  @override
  checkemail() {}

  @override
  goToVerifyCode() {
    var formdata = formstate.currentState;

    if(formdata!.validate()){
      print("Valid");
      Get.offNamed(AppRoute.verfiyCode); //الغاء العودة
    }else{
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
