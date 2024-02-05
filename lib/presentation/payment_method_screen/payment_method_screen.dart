import '../payment_method_screen/widgets/fiftyfive_item_widget.dart';
import '../payment_method_screen/widgets/seventytwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ibrahim_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_text_form_field.dart';

class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController mMYYController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSeventyTwo(context),
              SizedBox(height: 16.v),
              _buildThirtyFour(context),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                width: 252.h,
                text: "Pay now",
                buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                buttonTextStyle: CustomTextStyles.headlineSmallGray200,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow2,
        margin: EdgeInsets.fromLTRB(22.h, 26.v, 345.h, 26.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyTwo(BuildContext context) {
    return SizedBox(
      height: 134.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 7.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return SeventytwoItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyTwo(BuildContext context) {
    return Container(
      height: 69.v,
      width: 338.h,
      margin: EdgeInsets.only(left: 1.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 46.h),
              child: Text(
                "12",
                style: CustomTextStyles.headlineSmallBlack900Medium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 20.v),
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlinePrimary3.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                children: [
                  Text(
                    "1234",
                    style: theme.textTheme.bodyMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text(
                      "1234",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text(
                      "1234",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text(
                      "1234",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "card Number",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEightySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Expiration Date",
            style: theme.textTheme.titleSmall,
          ),
          CustomTextFormField(
            width: 140.h,
            controller: mMYYController,
            hintText: "MM/YY",
            hintStyle: CustomTextStyles.titleMediumMedium,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyFour(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "cVC Code",
          style: theme.textTheme.titleSmall,
        ),
        CustomTextFormField(
          width: 140.h,
          controller: editTextController1,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThirtyFour(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 213.h),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 1.v,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return FiftyfiveItemWidget();
              },
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 7.h,
            ),
            child: CustomTextFormField(
              controller: emailController,
            ),
          ),
          SizedBox(height: 5.v),
          _buildNinetyTwo(context),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Cardholder Name",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 7.h,
            ),
            child: CustomTextFormField(
              controller: editTextController,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 7.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildEightySeven(context),
                _buildEightyFour(context),
              ],
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
