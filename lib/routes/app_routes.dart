import 'package:flutter/material.dart';
import 'package:ibrahim_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ibrahim_s_application1/presentation/login_screen/login_screen.dart';
import 'package:ibrahim_s_application1/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:ibrahim_s_application1/presentation/purchase_cars_container_screen/purchase_cars_container_screen.dart';
import 'package:ibrahim_s_application1/presentation/car_details_screen/car_details_screen.dart';
import 'package:ibrahim_s_application1/presentation/spare_parts_screen/spare_parts_screen.dart';
import 'package:ibrahim_s_application1/presentation/maintenance_services_screen/maintenance_services_screen.dart';
import 'package:ibrahim_s_application1/presentation/checkout_one_screen/checkout_one_screen.dart';
import 'package:ibrahim_s_application1/presentation/checkout_screen/checkout_screen.dart';
import 'package:ibrahim_s_application1/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:ibrahim_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String purchaseCarsPage = '/purchase_cars_page';

  static const String purchaseCarsContainerScreen =
      '/purchase_cars_container_screen';

  static const String carDetailsScreen = '/car_details_screen';

  static const String sparePartsScreen = '/spare_parts_screen';

  static const String maintenanceServicesScreen =
      '/maintenance_services_screen';

  static const String checkoutOneScreen = '/checkout_one_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpScreen: (context) => SignUpScreen(),
    loginScreen: (context) => LoginScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    purchaseCarsContainerScreen: (context) => PurchaseCarsContainerScreen(),
    carDetailsScreen: (context) => CarDetailsScreen(),
    sparePartsScreen: (context) => SparePartsScreen(),
    maintenanceServicesScreen: (context) => MaintenanceServicesScreen(),
    checkoutOneScreen: (context) => CheckoutOneScreen(),
    checkoutScreen: (context) => CheckoutScreen(),
    paymentMethodScreen: (context) => PaymentMethodScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
