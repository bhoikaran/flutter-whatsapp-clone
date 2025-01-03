import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/callsWidget.dart';
import 'package:whatsapp/widgets/chatsWidget.dart';
import 'package:whatsapp/widgets/statusWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "WhatsApp",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, right: 15),
                  child: Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
                PopupMenuButton(
                  iconColor: Colors.white,
                  color: Colors.white,
                  iconSize: 28,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text(
                        "new group",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text(
                        "new broadcast",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text(
                        "Linked devices",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: Text(
                        "Starred messages",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 5,
                      child: Text(
                        "Payments",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 6,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        body: Column(
          children: [
            Container(
              color: Color(0xff075e55),
              child: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                indicatorColor: Colors.white,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    //tab 1
                    width: 10,
                    child: Tab(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                        child: Row(
                      children: [
                        Text(
                          "CHATS",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "10",
                            style: TextStyle(
                                color: Color(0xff075e55), fontSize: 13),
                          ),
                        )
                      ],
                    )),
                  ),
                  Container(
                    //tab 1
                    width: 85,
                    child: Tab(
                      child: Text(
                        "STATUS",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    //tab 1
                    width: 85,
                    child: Tab(
                      child: Text(
                        "CALLS",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: TabBarView(children: [
                  // tab 1
                  Container(
                    color: Colors.black,
                  ),

                  //tab 2
                  ChatsWidget(),
                  //tab 3
                  StatusWidget(),
                  //tab 4
                  CallsWidget(),
                ]))
          ],
        ),
      ),
    );
  }
}
