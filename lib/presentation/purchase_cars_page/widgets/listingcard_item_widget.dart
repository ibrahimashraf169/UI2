import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ListingcardItemWidget extends StatelessWidget {
  const ListingcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3850,
            height: 121.v,
            width: 349.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New",
                    style: CustomTextStyles.bodySmallWhiteA700,
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "Honda Accord 2019",
                    style: CustomTextStyles.bodySmallWhiteA700,
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMaskGroup,
                height: 25.v,
                width: 24.h,
                margin: EdgeInsets.only(
                  top: 4.v,
                  bottom: 16.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 1.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 9.v),
                child: Text(
                  "500,000 EGP",
                  style: CustomTextStyles.bodySmallWhiteA700,
                ),
              ),
              CustomElevatedButton(
                height: 22.v,
                width: 80.h,
                text: "View Details",
                margin: EdgeInsets.only(bottom: 5.v),
                buttonTextStyle: theme.textTheme.labelMedium!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
