import 'package:flutter/material.dart';
import 'package:whatsapp/whats_data/status_data.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        onTap: () {},
        title: Text(
          'My status',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
        subtitle: Text('Tap to add status update'),
        leading: Stack(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/p10.jpeg'),
              radius: 30,
            ),
            Positioned(
              top: 30,
              left: 34,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Color(0xff128C7E),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 10, left: 20),
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: Text(
          'Recent updates',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Expanded(
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              leading: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(statusData[index].pic),
                ),
              ),
              title: Text(statusData[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              subtitle: Text(statusData[index].time, style: TextStyle(color: Colors.grey, fontSize: 14,),),
            );
          },
          separatorBuilder: (BuildContext context, int index)=>Divider(),
          itemCount: statusData.length
        ),
      )
    ]);
  }
}
