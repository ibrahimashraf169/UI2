import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/core/app_export.dart';
import 'package:ibrahim_s_application1/presentation/maintenance_services_screen/maintenance_services_screen.dart';
import 'package:ibrahim_s_application1/presentation/purchase_cars_page/purchase_cars_page.dart';
import 'package:ibrahim_s_application1/widgets/custom_bottom_bar.dart';
import '../spare_parts_screen/spare_parts_screen.dart';

// ignore_for_file: must_be_immutable
class PurchaseCarsContainerScreen extends StatelessWidget {
  PurchaseCarsContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.purchaseCarsPage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      // ),
    ),
    );
  }

  /// Section Widget
  // Widget _buildBottomBar(BuildContext context) {
  //   return CustomBottomBar(onChanged: (BottomBarEnum type) {
  //     Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type)!);
  //   });
  // }

  ///Handling route based on bottom click actions
  // String? getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return AppRoutes.purchaseCarsPage;
  //     case BottomBarEnum.Contactus:
  //       return "/";
  //     case BottomBarEnum.Profile:
  //       return "/";
  //     case BottomBarEnum.Settings:
  //       return "/";
  //     default:
  //       return null;
  //   }
  // }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.purchaseCarsPage:
        return PurchaseCarsPage();
      case AppRoutes.sparePartsScreen:
        return SparePartsScreen();
      case AppRoutes.maintenanceServicesScreen:
        return MaintenanceServicesScreen();
      default:
        return Container(); // Return a default empty container or any other default widget
    }
  }
}
