import 'package:ecommerce_app_project/core/constant/color.dart';
import 'package:ecommerce_app_project/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Success',
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
            const Text("Success"),
            const SizedBox(height: 30),
            const Text("We Can Return To Login"),
            const SizedBox(height: 50),
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "Go To Login",
                onPressed: () {
                  //controller.signUp();
                }),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
