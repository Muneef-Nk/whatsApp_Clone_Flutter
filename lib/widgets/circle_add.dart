import 'package:flutter/material.dart';


class CircleAdd extends StatelessWidget {
  const CircleAdd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}