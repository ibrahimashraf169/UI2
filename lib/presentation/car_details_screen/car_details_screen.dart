import '../car_details_screen/widgets/seven_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ibrahim_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({Key? key})
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
            horizontal: 18.h,
            vertical: 8.v,
          ),
          child: Column(
            children: [
              _buildCarDetails(context),
              SizedBox(height: 18.v),
              CustomElevatedButton(
                height: 40.v,
                width: 190.h,
                text: "Purchase the Qashqai 2020 now!",
                buttonTextStyle: CustomTextStyles.labelMediumWhiteA700,
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
      title: AppbarTitle(
        text: "Car Details",
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCarDetails(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.blueGray900,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.whiteA700,
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 185.v,
        width: 351.h,
        padding: EdgeInsets.symmetric(
          horizontal: 4.h,
          vertical: 3.v,
        ),
        decoration: AppDecoration.outlineWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 97.v,
                width: 340.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPic,
                      height: 97.v,
                      width: 340.h,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 58.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskGroup,
                              height: 25.v,
                              width: 24.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  top: 7.v,
                  right: 45.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 89.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Text(
                        "EGP 1,500,000 ",
                        style: CustomTextStyles.labelMediumBluegray900,
                      ),
                    ),
                    SizedBox(height: 48.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 35.v,
                        child: ListView.separated(
                          padding: EdgeInsets.only(left: 42.h),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              width: 10.h,
                            );
                          },
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return SevenItemWidget();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
