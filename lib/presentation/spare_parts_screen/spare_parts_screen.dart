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
                        _buildSearchView(),
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
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            _navigateTo(context, type);
          },
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context, BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
      // Navigate to the home page.
        Navigator.pushNamed(context, AppRoutes.purchaseCarsPage);
        break;
      case BottomBarEnum.Contactus:
      case BottomBarEnum.Profile:
      case BottomBarEnum.Settings:
      // Implement navigation to other pages as needed.
        break;
    }
  }

  Widget _buildSparePartsButton(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      width: 95.h,
      text: "Spare Parts",
      buttonStyle: CustomButtonStyles.fillPrimaryTL18,
      buttonTextStyle: CustomTextStyles.labelLargeGray200,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.sparePartsScreen);
      },
    );
  }

  Widget _buildMaintenanceServicesButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 187.h,
      text: "Maintenance Services",
      buttonStyle: CustomButtonStyles.outlinePrimary,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.maintenanceServicesScreen);
      },
    );
  }

  Widget _buildSellCarsButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 80.h,
      text: "Sell Cars",
      buttonStyle: CustomButtonStyles.outlinePrimary,
      onPressed: () {
        // Navigate to the purchase cars container screen.
        Navigator.pushNamed(context, AppRoutes.purchaseCarsContainerScreen);
      },
    );
  }

  Widget _buildFrameRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSparePartsButton(context),
        _buildMaintenanceServicesButton(context),
        _buildSellCarsButton(context),
      ],
    );
  }

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

  Widget _buildSearchView() {
    return CustomSearchView(
      width: 272.h,
      hintText: "Find a Project",
      autofocus: false,
    );
  }
}
