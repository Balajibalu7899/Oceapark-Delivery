import 'package:flutter/material.dart';
import 'package:oceanpark_delivery/global/themes/light_theme.dart';
import 'package:oceanpark_delivery/pages/main/HomeMain.dart';
import 'package:oceanpark_delivery/pages/main/WhatsAppUI.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ocean Park Delivery',
      theme: LightTheme().lightTheme(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Whatsappui(),
    );
  }
}
