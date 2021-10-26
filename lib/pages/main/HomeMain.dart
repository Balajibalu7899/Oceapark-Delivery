import 'package:flutter/material.dart';
import 'package:oceanpark_delivery/components/utilui/CustomeTextWidget.dart';
import 'package:oceanpark_delivery/components/utilui/LogOut.dart';
import 'package:oceanpark_delivery/pages/main/HomePage.dart';
import 'package:flutter/services.dart';

class HomeMain extends StatefulWidget {
  HomeMain({Key? key}) : super(key: key);

  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  bool online = false;
  @override
  void initState() {
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text(
            "Ocean Park",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          actions: [
            Center(
              child: Text(
                online ? "Online" : "Offline",
                style: TextStyle(
                  color: online ? Theme.of(context).primaryColor : Colors.red,
                  fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                  fontWeight: Theme.of(context).textTheme.headline5!.fontWeight,
                ),
              ),
            ),
            Switch(
              activeColor: Theme.of(context).primaryColor,
              value: online,
              onChanged: (value) {
                online = value;
                setState(() {});
              },
            ),
          ],
        ),
        drawer: Drawer(
          elevation: 1,
          child: ListView(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/intro.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomeTextWidget(title: "Ocean Park"),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Id:",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Name:",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Phone:",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Address:",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(135, 134, 147, 1),
                      spreadRadius: 0,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: ListTile(
                  dense: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  title: CustomeTextWidget(title: "Home"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return HomeMain();
                    }));
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(135, 134, 147, 1),
                      spreadRadius: 0,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: ListTile(
                  dense: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  title: CustomeTextWidget(title: "Orders"),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(135, 134, 147, 1),
                      spreadRadius: 0,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: ListTile(
                  dense: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  title: CustomeTextWidget(title: "Delivered Orders"),
                  onTap: () {
                    SystemSound.play(SystemSoundType.click);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(135, 134, 147, 1),
                      spreadRadius: 0,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: ListTile(
                  dense: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  title: CustomeTextWidget(title: "Profile"),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(135, 134, 147, 1),
                      spreadRadius: 0,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: ListTile(
                  dense: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  title: CustomeTextWidget(title: "LogOut"),
                  onTap: () {
                    logout(context);
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    SystemSound.play(SystemSoundType.click);
                  },
                  child: Text("clickme"))
            ],
          ),
        ),
        body: HomePage());
  }
}
