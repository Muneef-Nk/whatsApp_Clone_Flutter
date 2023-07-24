class CallModel {
  final String pic;
  final String name;
  final String time;
  final bool videoVoiceIcon;
  final bool incoming;


  CallModel(
      {required this.pic,
      required this.time,
      required this.name,
      required this.videoVoiceIcon,
      required this.incoming,
      });
}

List<CallModel> callData = [
  new CallModel(
      pic: 'assets/images/p1.jpg',
      time: '1 day ago',
      name: 'amala',
      incoming: true,
      videoVoiceIcon: true),
  new CallModel(
      pic: 'assets/images/p2.jpeg',
      time: '4 day ago',
      name: 'kiran',
      incoming: false,
      videoVoiceIcon: true),
  new CallModel(
      pic: 'assets/images/p3.jpeg',
      time: '1 day ago',
      name: 'jithin',
      incoming: true,
      videoVoiceIcon: false),
  new CallModel(
      pic: 'assets/images/p4.jpeg',
      time: '4 day ago',
      name: 'nisham',
      incoming: false,
      videoVoiceIcon: true),
  new CallModel(
      pic: 'assets/images/p5.jpeg',
      time: '1 day ago',
      name: 'ameer',
      incoming: false,
      videoVoiceIcon: true),
  new CallModel(
      pic: 'assets/images/p6.jpeg',
      time: '2 day ago',
      name: 'nikhita',
      incoming: true,
      videoVoiceIcon: false),
  new CallModel(
      pic: 'assets/images/p7.jpeg',
      time: '10 day ago',
      name: 'sahal',
      incoming: false,
      videoVoiceIcon: true),
  new CallModel(
      pic: 'assets/images/p8.jpeg',
      time: '12 day ago',
      name: 'unnimaya',
      incoming: true,
      videoVoiceIcon: true),
  new CallModel(
      pic: 'assets/images/p9.jpeg',
      time: '1 day ago',
      name: 'chaithra',
      incoming: false,
      videoVoiceIcon: true),
  new CallModel(
      pic: 'assets/images/p10.jpeg',
      time: '4 day ago',
      name: 'aju',
      incoming: true,
      videoVoiceIcon: false),
  new CallModel(
      pic: 'assets/images/p11.jpeg',
      time: '1 day ago',
      name: 'josna',
      incoming: false,
      videoVoiceIcon: true),
  new CallModel(
      pic: 'assets/images/p12.jpeg',
      time: '4 day ago',
      name: 'gouri',
      incoming: true,
      videoVoiceIcon: true),
];
