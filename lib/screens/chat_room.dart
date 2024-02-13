import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatelessWidget {
  final String pic;
  final String name;
  final String status;

  const ChatRoom({
    super.key,
    required this.pic,
    required this.name,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          toolbarHeight: 67,
          leadingWidth: 92,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                  )),
              // IconButton(
              //     alignment: Alignment.centerLeft,
              //     onPressed: (){
              //       Navigator.of(context).pop();
              //     }, icon: Icon(Icons.arrow_back,)),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(pic),
              ),
            ],
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              Text(
                status,
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
          actions: const [
            SizedBox(
              width: 15,
            ),
            Icon(Icons.videocam_rounded),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.call),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg-image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      // Existing chat messages/widgets
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(7),
                  padding: EdgeInsets.all(4),
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.emoji_emotions_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 17),
                        // color: Colors.grey,
                        margin: EdgeInsets.only(
                          top: 3,
                        ),
                        width: MediaQuery.of(context).size.width * 0.30,
                        height: MediaQuery.of(context).size.height * 0.10,
                        child: TextField(
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            hintText: 'Message',
                            hintStyle:
                                TextStyle(color: Colors.black45, fontSize: 20),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(
                        CupertinoIcons.paperclip,
                        color: Colors.grey[700],
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[700],
                        ),
                        child: Icon(
                          Icons.currency_rupee_outlined,
                          color: Colors.white,
                          size: 17,
                        ),
                      ),
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey[700],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                  child: Icon(
                    Icons.mic,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
