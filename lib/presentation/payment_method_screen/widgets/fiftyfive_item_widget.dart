import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FiftyfiveItemWidget extends StatelessWidget {
  const FiftyfiveItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      "Select Card Type",
      style: theme.textTheme.titleSmall,
    );
  }
}
