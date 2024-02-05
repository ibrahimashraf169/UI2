import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 414.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildForgotPasswordRow(context),
                SizedBox(height: 20.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 26.h,
                    vertical: 127.v,
                  ),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder40,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 355.h,
                        child: Text(
                          "Forgot your password?\nEnter your E-mail to reset password.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleLargeInter,
                        ),
                      ),
                      SizedBox(height: 48.v),
                      _buildForgotPasswordStack(context),
                      SizedBox(height: 36.v),
                      CustomElevatedButton(
                        height: 50.v,
                        text: "Submit",
                        margin: EdgeInsets.symmetric(horizontal: 4.h),
                        buttonStyle: CustomButtonStyles.fillPrimary,
                      ),
                      SizedBox(height: 36.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildForgotPasswordRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 118.v,
              bottom: 19.v,
            ),
            child: Text(
              "Forgot Password",
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

  /// Section Widget
  Widget _buildForgotPasswordStack(BuildContext context) {
    return SizedBox(
      height: 54.v,
      width: 348.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 17.v),
              child: SizedBox(
                width: 86.h,
                child: Divider(
                  color: appTheme.whiteA700,
                  indent: 26.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 38.v,
              width: 80.h,
              margin: EdgeInsets.only(left: 25.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 38.v,
                      width: 80.h,
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                        borderRadius: BorderRadius.circular(
                          40.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: SizedBox(
                        width: 61.h,
                        child: Divider(
                          color: appTheme.whiteA700,
                          indent: 1.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 42.v,
              width: 348.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(
                  21.h,
                ),
                border: Border.all(
                  color: appTheme.whiteA700,
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 24.v,
              width: 80.h,
              margin: EdgeInsets.only(left: 25.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(
                  40.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 34.h),
              child: Text(
                "E-mail",
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
