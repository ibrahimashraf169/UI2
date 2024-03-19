import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ibrahim_s_application1/widgets/custom_elevated_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_outlined_button.dart';
import 'package:ibrahim_s_application1/widgets/custom_search_view.dart';
import '../purchase_cars_page/widgets/listingcard_item_widget.dart';
import '../purchase_cars_page/widgets/servicelist_item_widget.dart';
import '../purchase_cars_page/widgets/seventynine_item_widget.dart';

class PurchaseCarsPage extends StatelessWidget {
  PurchaseCarsPage({Key? key}) : super(key: key);

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
                                    "Click to sell your car",
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
        // Remove the bottom navigation bar from here
      ),
    );
  }

  Widget _buildFrameRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSparePartsButton(context),
        _buildMaintenanceServicesButton(context),
        SizedBox(
          width: 95.h, // Adjust the width here
          child: _buildSellCarsButton(context),
        ),
      ],
    );
  }






  Widget _buildSparePartsButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 95.h,
      text: "Spare Parts",
      buttonStyle: CustomButtonStyles.outlinePrimary,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.mainviewScreen);
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
    return CustomElevatedButton(
      height: 36.v,
      width: 187.h,
      text: "Old Cars",
      buttonStyle: CustomButtonStyles.fillPrimaryTL18,
      buttonTextStyle: CustomTextStyles.labelLargeGray200,
      onPressed: () {
        // Do nothing as we're already on the maintenance services screen.
      },
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
          return ListingcardItemWidget(); // Change this to the desired widget
        },
      ),
    );
  }
}
