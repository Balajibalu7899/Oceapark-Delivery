import 'package:flutter/material.dart';
import 'package:oceanpark_delivery/global/texts/light_container_properties.dart';

class OrderProductCard extends StatelessWidget {
  const OrderProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: Theme.of(context).cardTheme.margin,
      padding: EdgeInsets.all(5),
      decoration: containerdecoration,
      child: Row(
        children: [
          Image.asset(
            "assets/images/intro.png",
            height: 80,
            width: 120,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jalebi fish",
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  "cut:Curry Cut",
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  "100 Rs/100 gm",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "1 x Rs100",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Spacer(),
                    Text(
                      "Total:500RS",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
