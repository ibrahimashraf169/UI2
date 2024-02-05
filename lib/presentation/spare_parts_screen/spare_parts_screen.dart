import '../spare_parts_screen/widgets/productcard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/presentation/purchase_cars_page/purchase_cars_page.dart';
import 'package:ibrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_outlined_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_search_view.dart';

class SparePartsScreen extends StatelessWidget {
  SparePartsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 49.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        CustomSearchView(
                          width: 272.h,
                          controller: searchController,
                          hintText: "Find a Project",
                        ),
                        SizedBox(height: 25.v),
                        _buildFrameRow(context),
                        SizedBox(height: 26.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 22.adaptSize,
                                  width: 22.adaptSize,
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgContrast,
                                        height: 22.adaptSize,
                                        width: 22.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgPlus,
                                        height: 12.adaptSize,
                                        width: 12.adaptSize,
                                        alignment: Alignment.topRight,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 6.h,
                                    top: 3.v,
                                  ),
                                  child: Text(
                                    "Click to sell spare parts",
                                    style: CustomTextStyles.labelLargeBlue600
                                        .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 23.v),
                        _buildProductCard(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSparePartsButton(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      width: 95.h,
      text: "Spare Parts",
      buttonStyle: CustomButtonStyles.fillPrimaryTL18,
      buttonTextStyle: CustomTextStyles.labelLargeGray200,
    );
  }

  /// Section Widget
  Widget _buildMaintenanceServicesButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 187.h,
      text: "Maintenance Services",
      buttonStyle: CustomButtonStyles.outlinePrimary,
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSparePartsButton(context),
              _buildMaintenanceServicesButton(context),
            ],
          ),
        ),
        Container(
          width: 80.h,
          margin: EdgeInsets.only(left: 12.h),
          padding: EdgeInsets.symmetric(vertical: 8.v),
          decoration: AppDecoration.outlinePrimary1.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder18,
          ),
          child: Text(
            "Sell Cars",
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.v),
            child: SizedBox(
              width: 265.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.blue600,
              ),
            ),
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ProductcardItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.purchaseCarsPage;
      case BottomBarEnum.Contactus:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.purchaseCarsPage:
        return PurchaseCarsPage();
      default:
        return DefaultWidget();
    }
  }
}
