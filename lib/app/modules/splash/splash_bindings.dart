

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/data/providers/remote/authentication_api.dart';
import 'package:getx_pattern/app/data/repositories/authentication_repository.dart';
import 'package:getx_pattern/app/modules/splash/SplashController.dart';

class SplashPageBinding implements Bindings {
@override
void dependencies() {
  
  Get.lazyPut(() => SplashPageController());
  // Get.lazyPut<MyPageController>(() => {2:MyPage}Controller(
  //   repository: MyUserRepository(
  //   apiClient: MyDataProvider(httpClient: http.Client()))));
  }
}