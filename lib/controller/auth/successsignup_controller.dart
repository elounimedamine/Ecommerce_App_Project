import 'package:ecommerce_app_project_flutter/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController{

  goToPageLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController{

  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }

}