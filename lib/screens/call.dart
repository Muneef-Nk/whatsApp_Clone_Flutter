import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:whatsapp/calls_data.dart';
import '../whats_data/calls_data.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          itemCount: callData.length,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(callData[index].pic),
              ),
              title: Text(
                callData[index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    callData[index].incoming
                        ? CupertinoIcons.arrow_down_left
                        : callData[index].isMessed
                         ? CupertinoIcons.arrow_up_right
                        : CupertinoIcons.arrow_down_left,

                    color: callData[index].incoming
                        ? Colors.red
                        : callData[index].isMessed
                        ? Colors.green
                        :  Colors.red,
                    size: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    callData[index].time,
                  ),
                ],
              ),
              trailing: Icon(
                callData[index].videoVoiceIcon
                    ? Icons.call
                    : Icons.videocam_rounded,
                color: Color(0xff128C7E),
              ),
            );
          }),
    );
  }
}
