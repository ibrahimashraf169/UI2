import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SeventynineItemWidget extends StatelessWidget {
  const SeventynineItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 138.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgBigUp13868aec,
          height: 92.v,
          width: 138.h,
          margin: EdgeInsets.only(bottom: 45.v),
        ),
      ),
    );
  }
}
