import 'package:flutter/material.dart';
import '../core/app_export.dart';

// Extension for custom text styles
extension CustomTextStyleExtensions on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

class CustomTextStyles {
  // Body text style
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
    color: theme.colorScheme.primary,
  );

  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.whiteA700,
  );

  static get bodySmall99000000 => theme.textTheme.bodySmall!.copyWith(
    color: Color(0X99000000),
    fontWeight: FontWeight.w300,
  );

  static get bodySmall99ffffff => theme.textTheme.bodySmall!.copyWith(
    color: Color(0X99FFFFFF),
    fontWeight: FontWeight.w300,
  );

  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.black900.withOpacity(0.6),
    fontWeight: FontWeight.w300,
  );

  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray600,
  );

  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray900,
  );

  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
    color: theme.colorScheme.secondaryContainer,
    fontWeight: FontWeight.w300,
  );

  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.whiteA700,
  );

  static get bodySmallffdd5464 => theme.textTheme.bodySmall!.copyWith(
    color: Color(0XFFDD5464),
    fontWeight: FontWeight.w300,
  );

  // Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
    color: appTheme.black900,
  );

  static get headlineSmallBlack900Medium =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );

  static get headlineSmallGray200 => theme.textTheme.headlineSmall!.copyWith(
    color: appTheme.gray200,
  );

  // Label text style
  static get labelLargeBlue600 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.blue600,
  );

  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
    fontWeight: FontWeight.w700,
  );

  static get labelLargeGray200 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.gray200,
    fontWeight: FontWeight.w700,
  );

  static get labelLargeGray200_1 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.gray200,
  );

  static get labelLarge_1 => theme.textTheme.labelLarge!;

  static get labelLargeff008cba => theme.textTheme.labelLarge!.copyWith(
    color: Color(0XFF008CBA),
    fontWeight: FontWeight.w700,
  );

  static get labelMediumAmber500 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.amber500,
  );

  static get labelMediumBluegray900 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.blueGray900,
  );

  static get labelMediumMedium => theme.textTheme.labelMedium!.copyWith(
    fontSize: 11,
    fontWeight: FontWeight.w500,
  );

  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
    color: theme.colorScheme.primary,
    fontSize: 11,
    fontWeight: FontWeight.w500,
  );

  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.whiteA700,
  );

  // Poppins text style
  static get poppinsBluegray900 => TextStyle(
    color: appTheme.blueGray900,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ).poppins;

  static get poppinsBluegray900Bold => TextStyle(
    color: appTheme.blueGray900,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  ).poppins;

  static get poppinsBluegray900Regular => TextStyle(
    color: appTheme.blueGray900,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ).poppins;

  // Title text style
  static get titleLargeInter => theme.textTheme.titleLarge!.copyWith(
    fontFamily: 'Inter',
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.whiteA700,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.black900,
    fontWeight: FontWeight.w600,
  );

  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
    fontSize: 14,
  );

  static get titleSmallGray200 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray200,
    fontSize: 14,
  );

  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.whiteA700,
    fontWeight: FontWeight.w700,
  );
}
