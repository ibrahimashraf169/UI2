import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ServicecenterlistItemWidget extends StatelessWidget {
  const ServicecenterlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineWhiteA7001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPic81x73,
            height: 81.v,
            width: 73.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 8.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                top: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 33.v,
                    width: 266.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 5.v),
                            child: Text(
                              "Pitstop Car Service Center",
                              style: CustomTextStyles.titleSmallGray200,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup,
                          height: 27.v,
                          width: 25.h,
                          alignment: Alignment.topRight,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLinkedin,
                          height: 20.v,
                          width: 12.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "Click here to view location",
                            style: CustomTextStyles.labelMediumPrimary.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v),
                  SizedBox(
                    height: 33.v,
                    width: 128.h,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 3.v),
                            child: Text(
                              "8:30 Am - 11:00 Pm",
                              style: CustomTextStyles.labelMediumMedium,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMdiTimerStart,
                          height: 33.v,
                          width: 30.h,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
