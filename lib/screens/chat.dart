import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_data.dart';
import 'package:whatsapp/screens/chat_room.dart';

bool isPicClicked = false;

class Chat extends StatefulWidget {
  Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  late int picindex;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: isPicClicked ? Colors.grey.shade300 : null,
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                isPicClicked ? poppic() : tileClicked(context, index);
              },
              leading: GestureDetector(
                onTap: () {
                  setState(() {
                    isPicClicked = !isPicClicked;
                    picClick(index);
                  });
                },
                child: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage(chatData[index].pic),
                ),
              ),
              title: Text(
                '${chatData[index].name}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Text(chatData[index].msg,
                  style: TextStyle(
                    fontSize: 14,
                  )),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      chatData[index].time,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff25D366),
                      ),
                      child: Center(
                          child: Text(
                        chatData[index].msgCount,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      )),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: chatData.length,
        ),
      ),
      isPicClicked
          ? Column(
            children: [
              Stack(
              children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 60, right: 60),
                    width: 272,
                    height: 270,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(chatData[picindex].pic),
                            fit: BoxFit.fitWidth),),
                  ),
                  Positioned(
                    top: 60,
                    left: 70,
                    child: Text(
                      chatData[picindex].name,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),

                ]),
              Container(
                width: 272,
                height: 50,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.message,color: Color(0xff075E54), ),
                    Icon(Icons.call,color: Color(0xff075E54)),
                    Icon(Icons.info,color: Color(0xff075E54)),
                  ],
                ),
              )
            ],
          )
          : Text('')
    ]);
  }

  void poppic() {
    setState(() {
      isPicClicked = false;
    });
  }

  void picClick(int index) {
    setState(() {
      picindex = index;
    });
  }

  void tileClicked(BuildContext context, int index) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ChatRoom(
              status: chatData[index].status,
              name: chatData[index].name,
              pic: chatData[index].pic,
            )));
  }
}
