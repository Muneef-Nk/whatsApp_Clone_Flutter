// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/screens/community.dart';
import 'package:whatsapp/screens/select.dart';
import 'package:whatsapp/screens/status.dart';
import 'dart:io';
import 'dart:async';
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
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(
              width: 20,
            );
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
            tabs: const [
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
          actions:  [
            IconButton(onPressed: ()async{
            ImagePicker  image_picker = ImagePicker();
            await image_picker.pickImage(source: ImageSource.camera);
            }, icon: Icon(Icons.camera_alt)),
            sizedBox,
            Icon(Icons.search),
            sizedBox,
            PopupMenuButton(
                itemBuilder: (context)=>[
                  PopupMenuItem(child: Text('New group')),
                  PopupMenuItem(child: Text('New broadcast')),
                  PopupMenuItem(child: Text('Linked device')),
                  PopupMenuItem(child: Text('Starred messages')),
                  PopupMenuItem(child: Text('Payments')),
                  PopupMenuItem(child: Text('Settings')),
                ]),
          ],
        ),
        body: TabBarView(
            controller: _tabController,
            children: [
              Community(),
              Chat(),
              Status(),
              Calls(),
            ]


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
                            child: const Icon(
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
