import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/modules/splash/SplashController.dart';



class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashPageController>(
          builder: (_) => Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}