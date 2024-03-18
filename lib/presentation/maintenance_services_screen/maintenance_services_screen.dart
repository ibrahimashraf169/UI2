import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/presentation/purchase_cars_page/purchase_cars_page.dart';
import 'package:ibrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_outlined_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_search_view.dart';
import '../maintenance_services_screen/widgets/servicecenterlist_item_widget.dart';

class MaintenanceServicesScreen extends StatelessWidget {
  MaintenanceServicesScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Unfocus any focused text field to prevent the keyboard from opening
    FocusScope.of(context).unfocus();

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 49.v),
                Padding(
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
                                  "Click to add new maintenance services",
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
                      _buildServiceCenterList(context),
                    ],
                  ),
                ),
              ],
            ),
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
        Navigator.pushNamed(context, AppRoutes.purchaseCarsPage);
        break;
      case BottomBarEnum.Contactus:
      case BottomBarEnum.Profile:
      case BottomBarEnum.Settings:
      // Implement navigation to other pages as needed.
        break;
    }
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

  Widget _buildSparePartsButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 95.h,
      text: "Spare Parts",
      buttonStyle: CustomButtonStyles.outlinePrimary,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.sparePartsScreen);
      },
    );
  }

  Widget _buildMaintenanceServicesButton(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      width: 187.h,
      text: "Maintenance Services",
      buttonStyle: CustomButtonStyles.fillPrimaryTL18,
      buttonTextStyle: CustomTextStyles.labelLargeGray200,
      onPressed: () {
        // Do nothing as we're already on the maintenance services screen.
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

  Widget _buildServiceCenterList(BuildContext context) {
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
          return ServicecenterlistItemWidget();
        },
      ),
    );
  }
}
