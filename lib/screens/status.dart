import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_data.dart';

import '../widgets/circle_add.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
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
                backgroundImage: AssetImage('assets/images/p10.jpeg'),
                radius: 30,
              ),
             CircleAdd(),
            ],
          ),
        ),
        statusCategoris(context, label: 'Recent updates'),
        SizedBox(
          height: 10,
        ),
        ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              leading: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  // color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green, width: 3,)
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(recent[index].pic),
                ),
              ),
              title: Text(recent[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              subtitle: Text(recent[index].time, style: TextStyle(color: Colors.grey, fontSize: 14,),),
            );
          },
          separatorBuilder: (BuildContext context, int index)=>Divider(),
          itemCount: recent.length
        ),

        statusCategoris(context, label: 'Viewed updates'),
        ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                leading: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      // color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 3,)
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(viewed[index].pic),
                  ),
                ),
                title: Text(viewed[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                subtitle: Text(viewed[index].time, style: TextStyle(color: Colors.grey, fontSize: 14,),),
              );
            },
            separatorBuilder: (BuildContext context, int index)=>Divider(),
            itemCount: viewed.length
        ),

      ]),
    );
  }

  Widget statusCategoris(BuildContext context, {required String label}) {
    return Container(
        padding: EdgeInsets.only(top: 10, left: 20),
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: Text(
          label,
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]),
        ),
      );
  }
}

