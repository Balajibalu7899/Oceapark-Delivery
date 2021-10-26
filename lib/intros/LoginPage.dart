import 'package:flutter/material.dart';
import 'package:oceanpark_delivery/components/utilui/CustomeElevatedButton.dart';
import 'package:oceanpark_delivery/components/utilui/CustomeTextField.dart';
import 'package:oceanpark_delivery/components/utilui/CustomeTextWidget.dart';
import 'package:oceanpark_delivery/global/texts/light_container_properties.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController _idController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomeTextWidget(title: "Enter Your ID &"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomeTextWidget(title: "Password"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("If you don't have ID please contact the Admin."),
              ),
              Container(
                height: 200,
                margin: Theme.of(context).cardTheme.margin,
                decoration: containerdecoration,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CustomeTextField(
                        controller: _idController,
                        label: "Enter Id",
                        hinttext: "Enter Id"),
                    CustomeTextField(
                        controller: _idController,
                        label: "Enter Password",
                        hinttext: "Enter Password"),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: CustomeElevatedButton(title: "Log In", tap: () {}),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
