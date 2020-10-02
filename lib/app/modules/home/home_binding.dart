

import 'package:get/get.dart';
import 'package:getx_pattern/app/modules/home/HomeController.dart';


class HomeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut(() => HomePageController());
  // Get.lazyPut<MyPageController>(() => {2:MyPage}Controller(
  //   repository: MyUserRepository(
  //   apiClient: MyDataProvider(httpClient: http.Client()))));
  }
}