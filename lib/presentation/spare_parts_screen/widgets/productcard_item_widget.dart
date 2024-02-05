import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  const ProductcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPic73x73,
            height: 73.adaptSize,
            width: 73.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 14.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 171.h,
                          child: Text(
                            "Automotive Wiper Blades 22 Inch -2 Pieces",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style:
                                CustomTextStyles.labelLargeGray200_1.copyWith(
                              height: 1.08,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup,
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                          margin: EdgeInsets.only(
                            left: 69.h,
                            bottom: 4.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 20.v,
                        ),
                      ),
                      SizedBox(
                        width: 238.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 112.h,
                              margin: EdgeInsets.only(
                                top: 1.v,
                                bottom: 17.v,
                              ),
                              child: Text(
                                "All-weather performance\nSoft rubber construction\nCurved design",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.labelSmall!.copyWith(
                                  height: 1.25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 64.h),
                              child: Column(
                                children: [
                                  CustomOutlinedButton(
                                    height: 22.v,
                                    width: 62.h,
                                    text: "EGP 167",
                                    buttonTextStyle:
                                        CustomTextStyles.labelMediumAmber500,
                                  ),
                                  SizedBox(height: 8.v),
                                  CustomElevatedButton(
                                    height: 22.v,
                                    width: 62.h,
                                    text: "Buy Now",
                                    buttonTextStyle:
                                        theme.textTheme.labelMedium!,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
