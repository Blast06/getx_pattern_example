import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/modules/login/LoginController.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginPageController>(
      builder: (_) => Scaffold(
        backgroundColor: Colors.greenAccent,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  textInputAction: TextInputAction.next,
                  onChanged: _.onUsernameChange,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(labelText: "Username"),
                ),
                TextField(
                  onChanged: _.onPasswordChange,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                ),
                
                RaisedButton(
                  color: Colors.black,
                  onPressed: _.submit,
                  splashColor: Colors.green,
                  child: Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
