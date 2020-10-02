import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/data/models/request_token.dart';
import 'package:getx_pattern/app/data/repositories/authentication_repository.dart';
import 'package:getx_pattern/app/data/repositories/local/local_auth_repository.dart';
import 'package:getx_pattern/app/routes/app_pages.dart';
import 'package:meta/meta.dart';

class LoginPageController extends GetxController {
  final AuthenticationRepository _authenticationRepository =
      Get.find<AuthenticationRepository>();

  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  String username = '';
  String password = '';

  void onUsernameChange(String text) {
    username = text;
  }

  void onPasswordChange(String text) {
    password = text;
  }

  Future<void> submit() async {
    try {
      RequestToken requestToken =
          await _authenticationRepository.newRequestToken();

      final RequestToken authRequestToken =
          await _authenticationRepository.authWithLogin(
              username: username,
              password: password,
              requestToken: requestToken.requestToken);
      print("login token ${authRequestToken.expiresAt}");
      print("Login ok");

      await _localAuthRepository.setSession(authRequestToken);
      Get.offNamed(Routes.HOME);
    } catch (e) {
      String title = "Error";
      String message = "";
      if (e is DioError) {
        if (e.response != null) {
          message = e.response.statusMessage;
        } else {
          message = e.message;
        }
      }
      Get.dialog(AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          RaisedButton(
            color: Colors.black,
            onPressed: () => Get.back(),
            splashColor: Colors.green,
            child: Text(
              'OK',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ));
    }
  }
}
