import 'dart:ui';

class chatModel {
  final String name;
  final String msg;
  final String time;
  final String msgCount;
  final String pic;

  chatModel(this.name, this.msg, this.time, this.msgCount, this.pic);



}

List<chatModel> chatData = [
  new chatModel('amala', 'hi man', '2:21 PM', '2', 'images/p1.jpg'),
  new chatModel('kiran', 'how are you ', '2:21 PM', '1', 'images/p2.jpeg'),
  new chatModel('jithin', 'hi man', '2:21 PM', '9', 'images/p3.jpeg'),
  new chatModel('nisham', 'hi man', '2:21 PM', '3', 'images/p4.jpeg'),
  new chatModel('ameer', 'hi man', '2:21 PM', '6', 'images/p5.jpeg'),
  new chatModel('nikhitha', 'whatsapp', '7:44 AM', ' 2', 'images/p6.jpeg'),
  new chatModel('sahal', 'whatsapp', '2:21 PM', ' 7', 'images/p7.jpeg'),
  new chatModel('unnimaya', 'whatsapp', '9:43 PM', ' 9', 'images/p8.jpeg'),
  new chatModel('chaithra', 'whatsapp', '2:29 AM', ' 1', 'images/p9.jpeg'),
  new chatModel('aju', 'whatsapp', '2:11 PM', ' 2', 'images/p10.jpeg'),
  new chatModel('josna', 'whatsapp', '2:54 PM', ' 9', 'images/p11.jpeg'),
  new chatModel('gouri', 'whatsapp', '1:03 AM', ' 4', 'images/p12.jpeg'),
];


