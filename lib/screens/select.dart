import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SelectContact extends StatelessWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Contact'),
        actions: [
          // SizedBox(width: 20,),
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: Lottie.asset('assets/lottie/under_construction.json', width: 300)
        // Text(
        //   'Under construction',
        //   style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       fontSize: 30,
        //       color: Color(0xff128C7E)),
        // ),
      ),
    );
  }
}
