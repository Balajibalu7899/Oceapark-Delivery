import 'package:flutter/material.dart';
import 'package:oceanpark_delivery/global/texts/light_container_properties.dart';
import 'package:oceanpark_delivery/pages/sub/OrderDetailsPage.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: Theme.of(context).cardTheme.margin,
      decoration: containerdecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nithin S",
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    "3Items",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OrderDetailsPage();
                  }));
                },
                child: Text(
                  "Tap to View Items",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
            child: Text(
              "Address",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "32 , Darshan Udyog Bhavan, Andheri-kurla Road, Behind Ibp Petrol Pump, Andheri (west), Bengaluru.",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ],
      ),
    );
  }
}
