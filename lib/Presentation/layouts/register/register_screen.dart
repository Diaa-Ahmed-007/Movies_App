import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/register/register_viewmodel/register_view_model.dart';
import 'package:movies_app/core/Utils/routes.dart';
import 'package:movies_app/core/constants.dart';
import 'package:movies_app/core/reusable%20components/custom_text_filed.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({super.key});

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
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
                "Create New Account",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 36.h),
              Text(
                "please fill in the form to continue",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: 73.h),
              customTextFiled(
                hintText: 'First Name',
                textController: firstNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this field can't be empty";
                  }
                  if (value.length > 10) {
                    return "first Name must less than 8 char ";
                  }
                  return null;
                },
                keyboard: TextInputType.name,
              ),
              SizedBox(height: 59.h),
              customTextFiled(
                hintText: 'Last Name',
                textController: lastNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this field can't be empty";
                  }
                  if (value.length > 10) {
                    return "Last Name must less than 8 char ";
                  }
                  return null;
                },
                keyboard: TextInputType.name,
              ),
              SizedBox(height: 59.h),
              customTextFiled(
                hintText: 'Email',
                textController: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this field can't be empty";
                  }
                  if (!RegExp(Constants.RegExValidateEmail).hasMatch(value)) {
                    return "Enter valid Email";
                  }
                  return null;
                },
                keyboard: TextInputType.emailAddress,
              ),
              SizedBox(height: 59.h),
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
                keyboard: TextInputType.visiblePassword,
              ),
              SizedBox(height: 89.h),
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 35),
                child: ElevatedButton(
                  onPressed: () {
                    if (formfkey.currentState?.validate() ?? false) {
                      log(emailController.text);
                      log(passwordController.text);
                      registerViewModel regViewModel =
                          registerViewModel.get(context);
                      regViewModel.register(
                          emailController.text, passwordController.text);
                      // AuthHelper().register(
                      //     email: emailController.text.trim(),
                      //     password: passwordController.text.trim());
                      BlocBuilder<registerViewModel, registerState>(
                        buildWhen: (previous, current) {
                          if (current is registeSuccessState ||
                              current is registerErrorState ||
                              current is registerLoadingState) {
                            return true;
                          }
                          return false;
                        },
                        builder: (context, state) {
                          if (state is registeSuccessState) {
                            log(state.usercredential.user?.uid ?? "");

                            //  Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => ssss(),
                            // ));
                            return const AlertDialog(
                              content: Text("success"),
                              actions: [],
                            );
                          }
                          if (state is registerErrorState) {
                            return AlertDialog(
                              content: Text(state.errorMessage),
                              actions: const [],
                            );
                          }
                          log("success");
                          return const AlertDialog(
                            content: Center(
                                child: CircularProgressIndicator.adaptive()),
                          );
                        },
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      fixedSize: Size(280.w, 49.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Text(
                    "register",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
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
                      Navigator.pushNamedAndRemoveUntil(
                          context, Routes.loginRouteName, (route) => false);
                    },
                    child: Text(
                      "Login",
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
