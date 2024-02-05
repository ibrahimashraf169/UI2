import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ServicelistItemWidget extends StatelessWidget {
  const ServicelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178.h,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: Text(
        "Services",
        style: theme.textTheme.bodySmall,
      ),
    );
  }
}
