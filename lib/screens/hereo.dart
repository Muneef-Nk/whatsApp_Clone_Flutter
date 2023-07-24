import 'package:flutter/material.dart';
//
// class HeroPage extends StatelessWidget {
//   const HeroPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         Navigator.of(context).pop();
//       },
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Container(
//           margin: EdgeInsets.only(top: 50, left: 60,right: 60),
//           width: 270,
//           height: 300,
//           color: Colors.red,
//         ),
//       ),
//     );
//   }
// }


class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
        Navigator.of(context).pop();
      },
      child: Container(

        child: Container(
          margin: EdgeInsets.only(top: 50, left: 60,right: 60),
          width: 270,
          height: 300,
          color: Colors.red,
        ),
      ),
    );
  }
}
