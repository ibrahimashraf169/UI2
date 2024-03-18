import 'dart:convert';
import 'package:dio/dio.dart';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/custom_checkbox_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_floating_text_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 414.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 118.v, bottom: 25.v),
                          child: Text(
                            "Welcome back!",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        // CustomImageView(
                        //   imagePath: ImageConstant.imgGroup36691,
                        //   height: 164.v,
                        //   width: 182.h,
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(height: 62.v),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 74.v),
                    decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildCustomTextField(
                          controller: emailController,
                          hintText: "E-mail",
                        ),
                        SizedBox(height: 8.v),
                        _buildCustomTextField(
                          controller: passwordController,
                          hintText: "Password",
                          labelText: "Password",
                          obscureText: true,
                        ),
                        SizedBox(height: 17.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h, right: 3.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        rememberMe = !rememberMe;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(8.0),
                                          child: CustomCheckboxButton(
                                            value: rememberMe,
                                            padding: EdgeInsets.symmetric(vertical: 1.v),
                                            onChange: (value) {
                                              setState(() {
                                                rememberMe = value;
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 5.0),
                                        Text(
                                          "Remember me",
                                          style: CustomTextStyles.bodyMediumPrimary.copyWith(
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotPassword(context);
                                  },
                                  child: Text(
                                    "Forgot password?",
                                    style: CustomTextStyles.bodyMediumPrimary.copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 63.v),
                        CustomElevatedButton(
                          height: 49.v,
                          text: "Log in",
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          onPressed: () {
                            _handleLogin();
                          },
                        ),
                        SizedBox(height: 40.v),
                        SizedBox(height: 41.v),
                        GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveanaccount(context);
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Don’t have an account?",
                                  style: CustomTextStyles.bodySmall99ffffff,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 69.v),
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

  Widget _buildCustomTextField({
    required TextEditingController controller,
    required String hintText,
    String? labelText,
    bool obscureText = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomFloatingTextField(
              controller: controller,
              labelText: labelText,
              hintText: hintText,
              obscureText: obscureText,
              contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
              labelStyle: theme.textTheme.titleMedium!.copyWith(
                color: theme.primaryColor,
              ),
            ),
            Positioned(
              left: 18.0,
              top: controller.text.isEmpty ? 16.0 : 8.0,
              child: Text(
                labelText ?? hintText,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
      ],
    );
  }

  void onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  void onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  void _handleLogin() async {
    if (_formKey.currentState?.validate() ?? false) {
      String username = emailController.text;
      String password = passwordController.text;

      final apiUrl = 'http://192.168.1.8:8080/auth/login';

      try {
        final response = await Dio().post(
          apiUrl,
          data: {'username': username, 'password': password},
        );

        if (response.statusCode == 200) {
          // Successful login
          final responseData = response.data;
          print('Login successful: $responseData');

          // Navigate to the app_navigation_screen
          Navigator.pushNamed(context, AppRoutes.appNavigationScreen);
        } else {
          // Handle errors or unsuccessful login
          print('Login failed. Status code: ${response.statusCode}');
          print('Error message: ${response.data}');

          // Show error message
          showErrorDialog('Login failed. ${response.data}');
        }
      } catch (error) {
        // Handle network errors
        print('Network error: $error');

        // Show error message
        showErrorDialog('Network error. Please check your connection.');
      }
    }
  }

  void showErrorDialog(String errorMessage) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(errorMessage),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }



}
