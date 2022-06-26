import 'package:ecommerce_app_project_flutter/controller/auth/successsignup_controller.dart';
import 'package:ecommerce_app_project_flutter/core/constant/color.dart';
import 'package:ecommerce_app_project_flutter/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text("32".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(child: Icon(Icons.check_circle_outline, size: 200, color: AppColor.primaryColor )),
            const SizedBox(height: 50),
            Text("37".tr , style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30)),
            const SizedBox(height: 50),
            Text("38".tr, style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20)),
            //const SizedBox(height: 200),
            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "31".tr,
                onPressed: () {
                  controller.goToPageLogin();
                }),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
