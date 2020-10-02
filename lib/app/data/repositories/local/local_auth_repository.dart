


import 'package:get/get.dart';
import 'package:getx_pattern/app/data/models/request_token.dart';
import 'package:getx_pattern/app/data/providers/local/local_auth.dart';

class LocalAuthRepository {
  final LocalAuth auth = Get.find<LocalAuth>();



  Future<void> setSession(RequestToken requestToken) => auth.setSession(requestToken);
  Future<RequestToken> get session => auth.getSession();
  Future<void>  clearsession() => auth.clearSession();
}