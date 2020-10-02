


import 'package:get/get.dart';
import 'package:getx_pattern/app/modules/details/DetailsController.dart';


class DetailBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut(() => DetailController());
  // Get.lazyPut<MyPageController>(() => {2:MyPage}Controller(
  //   repository: MyUserRepository(
  //   apiClient: MyDataProvider(httpClient: http.Client()))));
  }
}