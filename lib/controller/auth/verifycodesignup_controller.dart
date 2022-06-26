import 'package:ecommerce_app_project_flutter/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccesSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifycode;

  @override
  checkCode() {}

  @override
  goToSuccesSignUp() {
    Get.offNamed(AppRoute.successSignUp); //الغاء العودة
  }

  @override
  void onInit() {
    super.onInit();
  }

}
