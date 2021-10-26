import 'package:flutter/material.dart';
import 'package:oceanpark_delivery/components/cards/OrderProductCard.dart';
import 'package:oceanpark_delivery/components/utilui/CustomeOutlineButton.dart';
import 'package:oceanpark_delivery/components/utilui/CustomeTextWidget.dart';
import 'package:oceanpark_delivery/global/texts/light_container_properties.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: Text(
          "Order Details",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text("Balaji GV"),
                  Text("3Items"),
                ],
              ),
              Spacer(),
              Text("INR 240/-")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
              itemCount: 5,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return OrderProductCard();
              }),
          Container(
            height: 150,
            margin: Theme.of(context).cardTheme.margin,
            padding: EdgeInsets.all(5),
            decoration: containerdecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomeTextWidget(title: "Delivery Address"),
                Text(
                  "32 , Darshan Udyog Bhavan, Andheri-kurla Road, Behind Ibp Petrol Pump, Andheri (west), Bengaluru.",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: CustomeOutlineButton(title: "Done", tap: () {}))
        ],
      ),
    );
  }
}
