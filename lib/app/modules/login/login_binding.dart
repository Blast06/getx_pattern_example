

import 'package:get/get.dart';
import 'package:getx_pattern/app/modules/login/LoginController.dart';



class LoginBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut(() => LoginPageController());
  // Get.lazyPut<MyPageController>(() => {2:MyPage}Controller(
  //   repository: MyUserRepository(
  //   apiClient: MyDataProvider(httpClient: http.Client()))));
  }
}