import 'package:flutter/material.dart';

class CallModel{
  final String pic;
  final String name;
  final String time;
  final bool videoVoiceIcon;
  final bool incoming;
  final bool isMessed;
  CallModel(this.pic, this.time, this.name, this.videoVoiceIcon, this.incoming, this.isMessed);
}

List<CallModel> callData=[
  new CallModel('images/p1.jpg',  '1 day ago', 'amala', true, true , true),
  new CallModel('images/p2.jpeg', '4 day ago', 'kiran',   false, false , true),
  new CallModel('images/p3.jpeg', '1 day ago', 'jithin', true, true , false),
  new CallModel('images/p4.jpeg', '4 day ago', 'nisham',   false, true , true),
  new CallModel('images/p5.jpeg', '1 day ago', 'ameer', false, false , true),
  new CallModel('images/p6.jpeg', '2 day ago', 'nikhita',   true, true , false),
  new CallModel('images/p7.jpeg', '10 day ago', 'sahal', false, false,true ),
  new CallModel('images/p8.jpeg', '12 day ago', 'unnimaya',   true, true, true ),
  new CallModel('images/p9.jpeg', '1 day ago', 'chaithra', false, false , true),
  new CallModel('images/p10.jpeg', '4 day ago', 'aju',   true, true , false),
  new CallModel('images/p11.jpeg', '1 day ago', 'josna', false, false,true ),
  new CallModel('images/p12.jpeg', '4 day ago', 'gouri',   true, true, true ),
];