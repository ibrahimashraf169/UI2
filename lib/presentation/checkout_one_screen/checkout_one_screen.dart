import '../checkout_one_screen/widgets/productlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ibrahim_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';

class CheckoutOneScreen extends StatelessWidget {
  const CheckoutOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 44.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildProductList(context),
              SizedBox(height: 20.v),
              _buildCheckoutOne(context),
              SizedBox(height: 35.v),
              CustomElevatedButton(
                text: "Checkout",
                margin: EdgeInsets.only(
                  left: 60.h,
                  right: 40.h,
                ),
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
  Widget _buildProductList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 20.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ProductlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckoutOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 25.h,
            ),
            child: Row(
              children: [
                Text(
                  "Subtotal",
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "EGP",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 26.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "2167",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 36.h,
            ),
            child: Row(
              children: [
                Text(
                  "Delivery",
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "EGP",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 29.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "30",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          SizedBox(
            height: 28.v,
            width: 345.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 345.h,
                    child: Divider(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      right: 24.h,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Total ",
                          style: CustomTextStyles.titleMediumBlack900,
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "EGP",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 21.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "2550",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
