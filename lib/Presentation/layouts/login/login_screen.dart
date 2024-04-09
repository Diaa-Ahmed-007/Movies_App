import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/Utils/routes.dart';
import 'package:movies_app/core/constants.dart';
import 'package:movies_app/core/reusableComponents/custom_text_filed.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formfkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 26.w),
        child: Form(
          key: formfkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome Back",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: 22.h),
              Text(
                "Enjoy your watch",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 104.h),
              customTextFiled(
                hintText: 'Email',
                textController: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this field can't be empty";
                  }
                  if (!RegExp(constants.RegExValidateEmail).hasMatch(value)) {
                    return "Enter valid Email";
                  }
                  return null;
                },
                keyboard: TextInputType.emailAddress,
              ),
              SizedBox(height: 98.h),
              customTextFiled(
                hintText: 'Password',
                textController: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this field can't be empty";
                  }
                  if (value.length > 8) {
                    return "password must less than 8 char ";
                  }
                  return null;
                },
                keyboard: TextInputType.text,
              ),
              SizedBox(height: 158.h),
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 35),
                child: ElevatedButton(
                  onPressed: () {
                    if (formfkey.currentState?.validate() ?? false) {}
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      fixedSize: Size(280.w, 49.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 58.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.registerRouteName);
                    },
                    child: Text(
                      "register",
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
