import 'package:flutter/material.dart';

class Whatsappui extends StatelessWidget {
  const Whatsappui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            elevation: 0,
            // backgroundColor: Color.fromRGBO(18, 140, 126, 1),
            backgroundColor: Color.fromRGBO(39, 52, 67, 0.95),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.white),
              ),
              PopupMenuButton(
                elevation: 0,
                color: Color.fromRGBO(39, 52, 67, 1),
                tooltip: "settings",
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    child: Text(
                      "New Group",
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "New broadcast",
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "Linked devices",
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "Starred messages",
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "Payments",
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 2,
                  ),
                ],
              )
            ],
            bottom: TabBar(
              labelPadding: EdgeInsets.all(8),
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey.shade400,
              tabs: [
                Text(
                  "Chats",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Status",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Calls",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(color: Color.fromRGBO(39, 52, 67, 1), child: tabone()),
              Container(
                color: Color.fromRGBO(39, 52, 67, 1),
                child: statustab(),
              ),
              Container(
                  color: Color.fromRGBO(39, 52, 67, 1), child: callstab()),
            ],
          ),
        ),
      ),
    );
  }
}

Widget tabone() {
  return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOhpV67XSI4Vz5Z_L7XoWiH7UzZQDBTzS3g&usqp=CAU"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Bharath@citech",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              "9:45AM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "my life my rulz",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                color: Colors.grey,
              ),
            )
          ],
        );
      });
}

Widget callstab() {
  return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOhpV67XSI4Vz5Z_L7XoWiH7UzZQDBTzS3g&usqp=CAU"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Bharath@citech",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.phone,
                              size: 30,
                              color: Color.fromRGBO(37, 211, 102, 1),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.call_made,
                              size: 22,
                              color: Color.fromRGBO(37, 211, 102, 1),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "September 6:34AM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                color: Colors.grey,
              ),
            )
          ],
        );
      });
}

Widget statustab() {
  return ListView(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Recent updates",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
      ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 70,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOhpV67XSI4Vz5Z_L7XoWiH7UzZQDBTzS3g&usqp=CAU"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bharath@citech",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Today, 6:34",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Lastss updates",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
      ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 70,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOhpV67XSI4Vz5Z_L7XoWiH7UzZQDBTzS3g&usqp=CAU"),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bharath@citech",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Today, 6:34",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    ],
  );
}
