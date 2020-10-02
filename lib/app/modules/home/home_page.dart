import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/modules/home/HomeController.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.exit_to_app), onPressed: () =>_.logOut(),)
          ],
          centerTitle: true,
        ),
        backgroundColor: Colors.greenAccent,
        body: Container(
          child: Center(child: Text('Bienivenido ')),
        )
      ),
    );
  }
}
