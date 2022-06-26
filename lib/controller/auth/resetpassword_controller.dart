import 'package:ecommerce_app_project_flutter/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController { 

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password; 
  late TextEditingController repassword; 

  @override
  resetpassword() {}

  @override
  goToSuccessResetPassword() {
    var formdata = formstate.currentState;

    if(formdata!.validate()){
      print("Valid");
      Get.offNamed(AppRoute.successResetPassword);
    }else{
      print("Not Valid");
    }
    
  }

  @override
  void onInit() { 
    password = TextEditingController(); 
    repassword = TextEditingController(); 
    super.onInit();
  }

  @override
  void dispose() { 
    password.dispose(); 
    repassword.dispose(); 
    super.dispose();
  }
}