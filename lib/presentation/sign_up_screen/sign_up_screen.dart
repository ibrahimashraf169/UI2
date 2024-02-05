import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

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
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: 414.h,
                    child: SingleChildScrollView(
                        child: Column(children: [
                      _buildCreateYourAccount(context),
                      SizedBox(height: 20.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 16.v),
                          decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildName1(context),
                            SizedBox(height: 3.v),
                            _buildUserName1(context),
                            SizedBox(height: 4.v),
                            _buildPassword(context),
                            SizedBox(height: 2.v),
                            _buildConfirmpassword(context),
                            SizedBox(height: 1.v),
                            _buildPhoneNumber1(context),
                            SizedBox(height: 102.v),
                            _buildSignUp(context),
                            SizedBox(height: 19.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 30.h, right: 20.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.v),
                                          child: SizedBox(
                                              width: 105.h, child: Divider())),
                                      Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Text("or login with",
                                              style: CustomTextStyles
                                                  .bodySmallGray600)),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.v),
                                          child: SizedBox(
                                              width: 112.h,
                                              child: Divider(indent: 7.h)))
                                    ])),
                            SizedBox(height: 6.v),
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
                            SizedBox(height: 8.v),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtAlreadyhavean(context);
                                },
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Already have an account?",
                                          style: CustomTextStyles
                                              .bodySmall99ffffff),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "Log in",
                                          style: CustomTextStyles
                                              .labelLargeff008cba
                                              .copyWith(
                                                  decoration:
                                                      TextDecoration.underline))
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 67.v)
                          ]))
                    ]))))));
  }

  /// Section Widget
  Widget _buildCreateYourAccount(BuildContext context) {
    return SizedBox(
        height: 164.v,
        width: 394.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 19.v),
                  child: Text("Create your Account ",
                      style: theme.textTheme.titleLarge))),
          CustomImageView(
              imagePath: ImageConstant.imgGroup36691,
              height: 164.v,
              width: 181.h,
              alignment: Alignment.centerRight)
        ]));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomFloatingTextField(
        width: 348.h,
        controller: nameController,
        labelText: "Name",
        labelStyle: theme.textTheme.titleMedium!,
        hintText: "Name",
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildName1(BuildContext context) {
    return SizedBox(
        height: 61.v,
        width: 348.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 38.v,
                  width: 66.h,
                  margin: EdgeInsets.only(left: 32.h),
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(33.h)))),
          _buildName(context)
        ]));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomFloatingTextField(
        width: 348.h,
        controller: userNameController,
        labelText: "Username",
        labelStyle: theme.textTheme.titleMedium!,
        hintText: "Username",
        alignment: Alignment.topCenter);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomFloatingTextField(
        width: 348.h,
        controller: emailController,
        labelText: "E-mail",
        labelStyle: theme.textTheme.titleMedium!,
        hintText: "E-mail",
        textInputType: TextInputType.emailAddress,
        alignment: Alignment.bottomCenter,
        contentPadding: EdgeInsets.fromLTRB(30.h, 5.v, 30.h, 27.v),
        borderDecoration: FloatingTextFormFieldStyleHelper.underLine,
        filled: false);
  }

  /// Section Widget
  Widget _buildUserName1(BuildContext context) {
    return SizedBox(
        height: 114.v,
        width: 348.h,
        child: Stack(
            alignment: Alignment.bottomCenter,
            children: [_buildUserName(context), _buildEmail(context)]));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomFloatingTextField(
        controller: passwordController,
        labelText: "Password",
        labelStyle: theme.textTheme.titleMedium!,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.fromLTRB(30.h, 4.v, 30.h, 27.v),
        borderDecoration: FloatingTextFormFieldStyleHelper.underLine,
        filled: false);
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return CustomFloatingTextField(
        controller: confirmpasswordController,
        labelText: "Confirm Password",
        labelStyle: theme.textTheme.titleMedium!,
        hintText: "Confirm Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomFloatingTextField(
        width: 348.h,
        controller: phoneNumberController,
        labelText: "Phone Number  ",
        labelStyle: theme.textTheme.titleMedium!,
        hintText: "Phone Number  ",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.phone,
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildPhoneNumber1(BuildContext context) {
    return SizedBox(
        height: 59.v,
        width: 348.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 38.v,
                  width: 148.h,
                  margin: EdgeInsets.only(left: 36.h),
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(74.h)))),
          _buildPhoneNumber(context)
        ]));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        height: 49.v,
        text: "Sign up ",
        buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
