import 'package:flutter/material.dart';
import 'package:oceanpark_delivery/components/cards/OrdersCard.dart';
import 'package:oceanpark_delivery/components/utilui/CustomeTextWidget.dart';
import 'package:oceanpark_delivery/global/texts/light_container_properties.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool active = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/group_22_1.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment(-0.9, 0),
              child: CustomeTextWidget(title: "Hi,Balaji"),
            ),
            Container(
              height: 150,
              margin: Theme.of(context).cardTheme.margin,
              decoration: containerdecoration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Name",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "+919901443987",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ID:67807",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Verified",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize:
                              Theme.of(context).textTheme.headline6!.fontSize,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        active = !active;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: active ? 1 : 0,
                        primary: active ? Colors.white : Colors.grey[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Text(
                      "Active Orders",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        active = !active;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: active ? 0 : 1,
                        primary: active ? Colors.grey[300] : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Text(
                      "Delivered Orders",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            OrdersCard(),
          ],
        ),
      ),
    );
  }
}
