import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        bottom: TabBar(
          tabs: [
            Tab(text: 'Chats',),
            Tab(text: 'Status',),
            Tab(text: 'calls',)
          ],
        ),
      ),
      body: TabBarView(
        children: [

        ],
      ),
    );
  }
}
