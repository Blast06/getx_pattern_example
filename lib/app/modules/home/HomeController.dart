import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/data/models/request_token.dart';
import 'package:getx_pattern/app/data/repositories/authentication_repository.dart';
import 'package:getx_pattern/app/data/repositories/local/local_auth_repository.dart';
import 'package:getx_pattern/app/routes/app_pages.dart';
import 'package:meta/meta.dart';

class HomePageController extends GetxController {
  

  final LocalAuthRepository _localAuthRepository = Get.find<LocalAuthRepository>();


  

  Future<void> logOut() async{

    await _localAuthRepository.clearsession();
    Get.offNamedUntil(Routes.LOGIN, (_) => false);
    
  }
}
