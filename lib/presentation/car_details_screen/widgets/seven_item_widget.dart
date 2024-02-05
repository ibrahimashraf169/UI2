import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SevenItemWidget extends StatelessWidget {
  const SevenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 41.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFullBattery1,
                height: 12.v,
                width: 11.h,
                margin: EdgeInsets.only(left: 7.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "Used",
                  style: CustomTextStyles.poppinsBluegray900Bold,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                "Car Status",
                style: CustomTextStyles.poppinsBluegray900Regular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
