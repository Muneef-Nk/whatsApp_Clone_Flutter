// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:whatsapp/screens/select.dart';
import 'package:whatsapp/screens/status.dart';

import 'screens/call.dart';
import 'screens/chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(fontSize: 25),
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.people)),
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              )
            ],
            indicatorWeight: 5,
            indicatorColor: Color(0xff25D366),
          ),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Column(
              children: [
                Image.asset(
                  'images/comm.jpg',
                  width: 500,
                  height: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Introducing communities',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 250,
                  // height: 100,
                  child: Center(
                    child: Text(
                        '   easy organize your releted groups \n'
                        ' and send announceements. Now your \n'
                        ' communites like nerghbouhoods or\n'
                        '   schools can have their own space',
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(StadiumBorder()),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff075E54)),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                    ),
                    onPressed: () {},
                    child: Text('Start your community'))
              ],
            ),
            Chat(),
            Status(),
            Calls(),
          ],
        ),
        floatingActionButton: _tabController?.index == 0
            ? null
            : _tabController?.index == 1
                ? FloatingActionButton(
                    backgroundColor: Color(0xff128C7E),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SelectContact()));
                    },
                    child: Icon(
                      Icons.message_sharp,
                    ),
                  )
                : _tabController?.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                            elevation: 10,
                            backgroundColor: Colors.grey[200],
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SelectContact()));
                            },
                            child: Icon(
                              Icons.edit,
                              color: Colors.blueGrey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FloatingActionButton(
                            backgroundColor: Color(0xff128C7E),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SelectContact()));
                            },
                            child: Icon(
                              Icons.camera_alt,
                            ),
                          )
                        ],
                      )
                    : FloatingActionButton(
                        backgroundColor: Color(0xff128C7E),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SelectContact()));
                        },
                        child: Icon(
                          Icons.add_call,
                        ),
                      ),
      ),
    );
  }
}
