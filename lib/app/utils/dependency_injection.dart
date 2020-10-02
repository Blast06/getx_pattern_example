import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/data/models/request_token.dart';
import 'package:getx_pattern/app/data/providers/local/local_auth.dart';
import 'package:getx_pattern/app/data/providers/remote/authentication_api.dart';
import 'package:getx_pattern/app/data/repositories/authentication_repository.dart';
import 'package:getx_pattern/app/data/repositories/local/local_auth_repository.dart';

// Here is where you can replace the api to mock one. Example:

// class MockAuthenticationApi implements AuthenticationApi{
//   @override
//   Future<RequestToken> newRequestToken() {
//     // TODO: implement newRequestToken
//     throw UnimplementedError();
//   }

// }

class DependencyInjection {
  static void init() {
    // Get.lazyPut<FlutterSecureStorage>(() => FlutterSecureStorage(),
    //     fenix: true);
        Get.put<FlutterSecureStorage>(FlutterSecureStorage());
    Get.put<Dio>(Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3')));

    //providers
    // Get.lazyPut<AuthenticationApi>(() => AuthenticationApi(), fenix: true);
    // Get.lazyPut<LocalAuth>(() => LocalAuth(), fenix: true);
    Get.put<AuthenticationApi>(AuthenticationApi());
    Get.put<LocalAuth>(LocalAuth());

    //repositorios
    // Get.lazyPut<AuthenticationRepository>(() => AuthenticationRepository(),fenix: true);
    // Get.lazyPut<LocalAuthRepository>(() => LocalAuthRepository(),fenix: true);
    Get.put<AuthenticationRepository>(AuthenticationRepository());
    Get.put<LocalAuthRepository>(LocalAuthRepository());
  }
}
