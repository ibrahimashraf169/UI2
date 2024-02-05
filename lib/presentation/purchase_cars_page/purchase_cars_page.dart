import '../purchase_cars_page/widgets/listingcard_item_widget.dart';
import '../purchase_cars_page/widgets/servicelist_item_widget.dart';
import '../purchase_cars_page/widgets/seventynine_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class PurchaseCarsPage extends StatelessWidget {
  PurchaseCarsPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 49.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: CustomSearchView(
                            width: 272.h,
                            controller: searchController,
                            hintText: "Find a Project",
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(height: 25.v),
                        _buildServiceList(context),
                        SizedBox(height: 26.v),
                        Padding(
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
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Most Popular Cars",
                            style: CustomTextStyles.titleSmallWhiteA700,
                          ),
                        ),
                        _buildSeventyNine(context),
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Available Cars",
                            style: CustomTextStyles.titleSmallWhiteA700,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildListingCard(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildServiceList(BuildContext context) {
    return SizedBox(
      height: 36.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 12.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ServicelistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyNine(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 137.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 20.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 1.h,
            );
          },
          itemCount: 5,
          itemBuilder: (context, index) {
            return SeventynineItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildListingCard(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return ListingcardItemWidget();
          },
        ),
      ),
    );
  }
}
