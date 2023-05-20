import 'package:flutter/material.dart';
import 'package:whatsapp/whats_data/chat_data.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              onTap: (){},
              leading: CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage(chatData[index].pic),
              ),
              title: Text('${chatData[index].name}', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              subtitle: Text(chatData[index].msg, style: TextStyle(fontSize: 14,)),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(chatData[index].time, style: TextStyle(fontSize: 13, color: Colors.grey,fontWeight: FontWeight.w500),),
                    SizedBox(height: 5,),
                    Container(
                      width: 20,
                      height: 20,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Color(0xff25D366),
                     ),
                      child: Center(child: Text(chatData[index].msgCount, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 13),)),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index)=> Divider(),
          itemCount: chatData.length,
        ),
    );
  }
}
