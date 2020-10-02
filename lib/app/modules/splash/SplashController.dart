
import 'package:get/get.dart';
import 'package:getx_pattern/app/data/models/request_token.dart';
import 'package:getx_pattern/app/data/repositories/authentication_repository.dart';
import 'package:getx_pattern/app/data/repositories/local/local_auth_repository.dart';
import 'package:getx_pattern/app/routes/app_pages.dart';


class SplashPageController extends GetxController {


  final LocalAuthRepository _localAuthRepository = Get.find<LocalAuthRepository>();



  @override
  void onReady() {
    _init();
  }

   _init() async {

     try {

       final RequestToken requestToken = await _localAuthRepository.session;
      //  await Future.delayed(Duration(seconds:2));
      print("requestToken");
      print(requestToken);

       Get.offNamed(
         requestToken != null ? Routes.HOME : Routes.LOGIN 
         );

     } catch (e) {
       print(e);
     }
    
  }
}