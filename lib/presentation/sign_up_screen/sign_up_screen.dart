import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_floating_text_field.dart';

import '../../model/signup.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatefulWidget {

  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List<User> users=[];

  TextEditingController nameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: 414.h,
              child: Column(
                children: [
                  _buildCreateYourAccount(context),
                  SizedBox(height: 20.v),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 16.v),
                    decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //_buildName(context),
                        SizedBox(height: 4.v),
                        _buildUserName(context),
                        SizedBox(height: 4.v),
                        _buildEmail(context),
                        SizedBox(height: 4.v),
                        _buildPassword(context),
                        SizedBox(height: 4.v),
                        //_buildConfirmpassword(context),
                        SizedBox(height: 4.v),
                        //_buildPhoneNumber(context),
                        SizedBox(height: 20.v),
                        _buildSignUp(context),

                        SizedBox(height: 8.v),
                        _buildAlreadyHaveAccount(context),
                        SizedBox(height: 20.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCreateYourAccount(BuildContext context) {
    return SizedBox(
      height: 164.v,
      width: 394.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 19.v),
              child: Text(
                "Create your Account ",
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup36691,
            height: 164.v,
            width: 181.h,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
  // Widget _buildName(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(vertical: 8.0),
  //     child: CustomFloatingTextField(
  //       width: 348.h,
  //       controller: nameController,
  //       labelText: "Name",
  //       labelStyle: theme.textTheme.titleMedium!,
  //       hintText: "Name",
  //       alignment: Alignment.bottomLeft,
  //       contentPadding: EdgeInsets.symmetric(vertical: 14.v, horizontal: 18.h),
  //     ),
  //   );
  // }

  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: CustomFloatingTextField(
        width: 348.h,
        controller: userNameController,
        labelText: "Username",
        labelStyle: theme.textTheme.titleMedium!,
        hintText: "Username",
        alignment: Alignment.bottomLeft,
        contentPadding: EdgeInsets.symmetric(vertical: 14.v, horizontal: 18.h),
      ),
    );
  }

  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: CustomFloatingTextField(
        width: 348.h,
        controller: emailController,
        labelText: "E-mail",
        labelStyle: theme.textTheme.titleMedium!,
        hintText: "E-mail",
        textInputType: TextInputType.emailAddress,
        alignment: Alignment.bottomLeft,
        contentPadding: EdgeInsets.symmetric(vertical: 14.v, horizontal: 18.h),
      ),
    );
  }

  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: CustomFloatingTextField(
        width: 348.h,
        controller: passwordController,
        labelText: "Password",
        labelStyle: theme.textTheme.titleMedium!,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        alignment: Alignment.bottomLeft,
        contentPadding: EdgeInsets.symmetric(vertical: 14.v, horizontal: 18.h),
      ),
    );
  }

  // Widget _buildConfirmpassword(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(vertical: 8.0),
  //     child: CustomFloatingTextField(
  //       width: 348.h,
  //       controller: confirmpasswordController,
  //       labelText: "Confirm Password",
  //       labelStyle: theme.textTheme.titleMedium!,
  //       hintText: "Confirm Password",
  //       textInputType: TextInputType.visiblePassword,
  //       obscureText: true,
  //       alignment: Alignment.bottomLeft,
  //       contentPadding: EdgeInsets.symmetric(vertical: 14.v, horizontal: 18.h),
  //     ),
  //   );
  // }

  // Widget _buildPhoneNumber(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(vertical: 8.0),
  //     child: CustomFloatingTextField(
  //       width: 348.h,
  //       controller: phoneNumberController,
  //       labelText: "Phone Number",
  //       labelStyle: theme.textTheme.titleMedium!,
  //       hintText: "Phone Number",
  //       textInputAction: TextInputAction.done,
  //       textInputType: TextInputType.phone,
  //       alignment: Alignment.bottomLeft,
  //       contentPadding: EdgeInsets.symmetric(vertical: 14.v, horizontal: 18.h),
  //     ),
  //   );
  // }


  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      height: 49.v,
      text: "Sign up",
      buttonStyle: CustomButtonStyles.fillPrimary,
      onPressed: () {
        signup(emailController.text.toString(),passwordController.text.toString(),userNameController.text.toString());

      },
    );
  }



  Widget _buildAlreadyHaveAccount(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTxtAlreadyhavean(context);
      },
      child: Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Already have an account?",
                style: CustomTextStyles.bodySmall99ffffff,
              ),
              TextSpan(text: " "),
              TextSpan(
                text: "Log in",
                style: CustomTextStyles.labelLargeff008cba.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  Future<void> signup(String email, String password, String username) async {
    print("Attempting signup with username: $username, email: $email, password: $password");

    try {
      final dio = Dio();
      final response = await dio.post(
        'http://192.168.1.8:8080/auth/register',
        data: {
          'username': username,
          'email': email,
          'password': password,
          'role': 'USER',
        },
      );

      print("Response status code: ${response.statusCode}");
      print("Response body: ${response.data}");

      if (response.statusCode == 200) {
        print("Signup successful");
      } else {
        print("Signup failed with status: ${response.statusCode}");
        // Handle failure, e.g., show an error message to the user
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout || e.type == DioErrorType.receiveTimeout) {
        print("Timeout error: $e");
        // Handle timeout error
      } else if (e.type == DioErrorType.response) {
        print("Response error: ${e.response?.statusCode}, ${e.response?.data}");
        // Handle non-200 response
      } else {
        print("DioError: $e");
        // Handle other Dio errors
      }
    } on SocketException catch (e) {
      print("SocketException: $e");
      // Handle socket exceptions
    } catch (e) {
      print("Error: $e");
      // Handle other exceptions
    }
  }



}
