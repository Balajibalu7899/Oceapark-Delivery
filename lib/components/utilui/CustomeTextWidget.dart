import 'package:flutter/material.dart';

class CustomeTextWidget extends StatelessWidget {
  final String title;
  const CustomeTextWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
