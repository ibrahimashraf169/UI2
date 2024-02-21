import 'package:flutter/material.dart';
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
                  _buildWelcomeBackRow(context),
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
                        _buildLoginRow(context),
                        SizedBox(height: 63.v),
                        CustomElevatedButton(
                          height: 49.v,
                          text: "Log in",
                          buttonStyle: CustomButtonStyles.fillPrimary,
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

  Widget _buildWelcomeBackRow(BuildContext context) {
    return Padding(
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
          CustomImageView(
            imagePath: ImageConstant.imgGroup36691,
            height: 164.v,
            width: 182.h,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginRow(BuildContext context) {
    return Padding(
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
          SizedBox(height: 10.v), // Adjust the spacing as needed
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
    );
  }



  void onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  void onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
