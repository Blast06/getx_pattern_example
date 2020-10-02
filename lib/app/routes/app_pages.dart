

import 'package:get/get.dart';
import 'package:getx_pattern/app/modules/details/detail_binding.dart';
import 'package:getx_pattern/app/modules/details/detail_page.dart';
import 'package:getx_pattern/app/modules/home/home_binding.dart';
import 'package:getx_pattern/app/modules/home/home_page.dart';
import 'package:getx_pattern/app/modules/login/login_binding.dart';
import 'package:getx_pattern/app/modules/login/login_page.dart';
import 'package:getx_pattern/app/modules/splash/splash_bindings.dart';
import 'package:getx_pattern/app/modules/splash/splash_page.dart';

import '../../main.dart';
part './app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.INITIAL, page:()=> SplashPage(), binding: SplashPageBinding()),
    GetPage(name: Routes.LOGIN, page:()=> LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.HOME, page:()=> HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.DETAILS, page:()=> DetailPage(), binding: DetailBinding())
  ];
}