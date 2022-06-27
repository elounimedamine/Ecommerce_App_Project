import 'package:ecommerce_app_project_flutter/controller/auth/signup_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
  }

}