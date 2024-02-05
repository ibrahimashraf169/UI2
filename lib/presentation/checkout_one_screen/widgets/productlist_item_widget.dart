import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  const ProductlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPic73x73,
          height: 73.adaptSize,
          width: 73.adaptSize,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
        Container(
          width: 97.h,
          margin: EdgeInsets.only(
            left: 9.h,
            top: 15.v,
            bottom: 15.v,
          ),
          child: Text(
            "Automotive Wiper Blades 22 Inch -2 Pieces",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.labelLargeGray200_1.copyWith(
              height: 1.08,
            ),
          ),
        ),
        Container(
          height: 36.v,
          width: 22.h,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 18.v,
            bottom: 18.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 6.v),
                child: CustomIconButton(
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  alignment: Alignment.topCenter,
                  child: CustomImageView(),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "-",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 35.v,
          width: 28.h,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 18.v,
            bottom: 18.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "1",
                  style: CustomTextStyles.headlineSmallBlack900,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 36.v,
          width: 22.h,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 18.v,
            bottom: 18.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 6.v),
                child: CustomIconButton(
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  alignment: Alignment.topCenter,
                  child: CustomImageView(),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "+",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 29.v,
            bottom: 28.v,
          ),
          child: Text(
            "EGP 167",
            style: CustomTextStyles.labelMediumWhiteA700,
          ),
        ),
      ],
    );
  }
}
