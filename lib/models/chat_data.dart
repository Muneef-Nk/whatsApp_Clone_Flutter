class chatModel {
  final String name;
  final String msg;
  final String time;
  final String msgCount;
  final String pic;
  final String status;

  chatModel(
      {required this.name,
      required this.msg,
      required this.time,
      required this.msgCount,
      required this.pic,
      required this.status});
}

List<chatModel> chatData = [
  new chatModel(
    name: 'amala',
    msg: 'hi man',
    time: '2:21 PM',
    msgCount: '2',
    pic: 'assets/images/p1.jpg',
    status: 'last seen today at 2:00 pm',
  ),
  new chatModel(
    name: 'Luna',
    msg: 'how are you ',
    time: '2:21 PM',
    msgCount: '1',
    pic: 'assets/images/p12.jpeg',
    status: 'online',
  ),
  new chatModel(
      name: 'jithin',
      msg: 'hi man',
      time: '2:21 PM',
      msgCount: '9',
      pic: 'assets/images/p3.jpeg',
      status: 'last seen today at 2:00 pm'),
  new chatModel(
      name: 'nisham',
      msg: 'hi man',
      time: '2:21 PM',
      msgCount: '3',
      pic: 'assets/images/p4.jpeg',
      status: 'online'),
  new chatModel(
      name: 'ameer',
      msg: 'hi man',
      time: '2:21 PM',
      msgCount: '6',
      pic: 'assets/images/p5.jpeg',
      status: 'last seen today at 2:00 pm'),
  new chatModel(
      name: 'nikhitha',
      msg: 'whatsapp',
      time: '7:44 AM',
      msgCount: ' 2',
      pic: 'assets/images/p6.jpeg',
      status: 'online'),
  new chatModel(
      name: 'sahal',
      msg: 'whatsapp',
      time: '2:21 PM',
      msgCount: ' 7',
      pic: 'assets/images/p7.jpeg',
      status: 'last seen today at 2:00 pm'),
  new chatModel(
      name: 'unnimaya',
      msg: 'whatsapp',
      time: '9:43 PM',
      msgCount: ' 9',
      pic: 'assets/images/p8.jpeg',
      status: 'online'),
  new chatModel(
      name: 'chaithra',
      msg: 'whatsapp',
      time: '2:29 AM',
      msgCount: ' 1',
      pic: 'assets/images/p9.jpeg',
      status: 'last seen today at 2:00 pm'),
  new chatModel(
      name: 'aju',
      msg: 'whatsapp',
      time: '2:11 PM',
      msgCount: ' 2',
      pic: 'assets/images/p10.jpeg',
      status: 'online'),
  new chatModel(
      name: 'josna',
      msg: 'whatsapp',
      time: '2:54 PM',
      msgCount: ' 9',
      pic: 'assets/images/p11.jpeg',
      status: 'last seen today at 2:00 pm'),

];
