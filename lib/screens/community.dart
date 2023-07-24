import 'package:flutter/material.dart';
import 'package:whatsapp/screens/select.dart';
import 'package:whatsapp/widgets/circle_add.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(height: 10,);
    return Scaffold(
      body: Column(
        children: [
          sizedBox,
          ListTile(
            leading: Stack(
              children:[
                Container(
                  width: 60,
                  height: 60,
                 decoration: BoxDecoration(
                   color: Colors.grey[350],
                   borderRadius: BorderRadius.circular(10)
                 ),
                  child: Icon(Icons.people, color: Colors.white,),
                ),
               CircleAdd()
              ] 
            ),
            title: Text('New community', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          ),
          sizedBox,
          Divider(thickness: 8, color: Colors.grey[100],),
          sizedBox,
          CommunityTiles(label: 'Mearn Developer'),
          sizedBox,
          Divider(thickness: 1,),
          sizedBox,
          CommunityTiles(label: 'Flutter Developer'),
          sizedBox,
          Divider(thickness: 1,),
          CommunityTiles(label: 'Python Developer'),
          sizedBox,
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SelectContact()));
            },
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 20, top: 4),
                child: Icon(Icons.arrow_forward_ios, size: 16,color: Colors.grey,),
              ),
               title: Text('   View all', style: TextStyle(fontSize: 18, color: Colors.grey),),
            ),
          ),
          Divider(thickness: 8, color: Colors.grey[100],),
        ],
      ),
    );
  }
}

class CommunityTiles extends StatelessWidget {
  final String label;
  const CommunityTiles({
    super.key, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(10)
        ),
        child: Icon(Icons.people, color: Colors.white,),
      ),
      title:  Text(label, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
    );
  }
}
