import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/custom_checkbox_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_floating_text_field.dart';
import 'package:ibrahim_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

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
                        child: Column(children: [
                      _buildWelcomeBackRow(context),
                      SizedBox(height: 62.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 74.v),
                          decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomTextFormField(
                                controller: emailController,
                                hintText: "E-mail",
                                textInputType: TextInputType.emailAddress,
                                borderDecoration:
                                    TextFormFieldStyleHelper.underLineWhiteA,
                                filled: false),
                            SizedBox(height: 8.v),
                            CustomFloatingTextField(
                                controller: passwordController,
                                labelText: "Password",
                                labelStyle: theme.textTheme.titleMedium!,
                                hintText: "Password",
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                obscureText: true),
                            SizedBox(height: 17.v),
                            _buildLoginRow(context),
                            SizedBox(height: 63.v),
                            CustomElevatedButton(
                                height: 49.v,
                                text: "Log in",
                                buttonStyle: CustomButtonStyles.fillPrimary),
                            SizedBox(height: 40.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.v),
                                          child: SizedBox(
                                              width: 105.h, child: Divider())),
                                      Text("or sign up with",
                                          style: CustomTextStyles
                                              .bodySmallGray600),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.v),
                                          child: SizedBox(
                                              width: 105.h, child: Divider()))
                                    ])),
                            SizedBox(height: 25.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: 21.adaptSize,
                                      width: 21.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgUser,
                                                height: 10.adaptSize,
                                                width: 10.adaptSize,
                                                alignment:
                                                    Alignment.bottomRight,
                                                margin: EdgeInsets.only(
                                                    bottom: 3.v)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgMobile,
                                                height: 8.v,
                                                width: 17.h,
                                                alignment: Alignment.bottomLeft,
                                                margin:
                                                    EdgeInsets.only(left: 1.h)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector,
                                                height: 9.v,
                                                width: 4.h,
                                                alignment: Alignment.topLeft,
                                                margin:
                                                    EdgeInsets.only(top: 5.v)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUserRed50001,
                                                height: 8.v,
                                                width: 17.h,
                                                alignment: Alignment.topLeft,
                                                margin:
                                                    EdgeInsets.only(left: 1.h))
                                          ])),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 5.h, top: 2.v),
                                      child: Text("Google",
                                          style: CustomTextStyles.titleSmall14))
                                ]),
                            SizedBox(height: 41.v),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtDonthaveanaccount(context);
                                },
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Don’t have an account?",
                                          style: CustomTextStyles
                                              .bodySmall99ffffff),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "Sign up",
                                          style: CustomTextStyles
                                              .labelLargeff008cba
                                              .copyWith(
                                                  decoration:
                                                      TextDecoration.underline))
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 69.v)
                          ]))
                    ]))))));
  }

  /// Section Widget
  Widget _buildWelcomeBackRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 118.v, bottom: 25.v),
              child: Text("Welcome back!", style: theme.textTheme.titleLarge)),
          CustomImageView(
              imagePath: ImageConstant.imgGroup36691,
              height: 164.v,
              width: 182.h)
        ]));
  }

  /// Section Widget
  Widget _buildLoginRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomCheckboxButton(
              text: "Remember me",
              value: rememberMe,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                rememberMe = value;
              }),
          GestureDetector(
              onTap: () {
                onTapTxtForgotPassword(context);
              },
              child: Text("Forgot password?",
                  style: CustomTextStyles.bodyMediumPrimary
                      .copyWith(decoration: TextDecoration.underline)))
        ]));
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
