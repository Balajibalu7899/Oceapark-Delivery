import 'package:flutter/material.dart';
import 'package:oceanpark_delivery/components/utilui/CustomeElevatedButton.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Let's Roll",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight:
                        Theme.of(context).textTheme.headline1!.fontWeight,
                    fontSize: Theme.of(context).textTheme.headline1!.fontSize,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "We Deliver",
                  style: Theme.of(context).textTheme.headline1!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Who Crave for sea food",
                  style: Theme.of(context).textTheme.headline1!,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/intro.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomeElevatedButton(
                  title: "Continue Login",
                  tap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
