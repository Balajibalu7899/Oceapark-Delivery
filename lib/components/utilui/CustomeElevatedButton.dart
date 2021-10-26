import 'package:flutter/material.dart';

class CustomeElevatedButton extends StatelessWidget {
  final String title;
  final Function tap;
  const CustomeElevatedButton(
      {Key? key, required this.title, required this.tap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        tap();
      },
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
