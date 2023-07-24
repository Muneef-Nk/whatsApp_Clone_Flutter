class StatusModel {
  final String pic;
  final String name;
  final String time;

  StatusModel(this.pic, this.name, this.time);

}

List<StatusModel> recent = [
  StatusModel('assets/images/p7.jpeg', 'sahal', '20 minutes ago'),
  StatusModel('assets/images/p6.jpeg', 'nikhita', '34 minutes ago'),
  StatusModel('assets/images/p5.jpeg', 'ameer', '3 minutes ago'),
  StatusModel('assets/images/p4.jpeg', 'nisham', '7 minutes ago'),
  StatusModel('assets/images/p3.jpeg', 'jithin', '10 minutes ago'),
  StatusModel('assets/images/p12.jpeg', 'gouri', '8 minutes ago'),
];

List<StatusModel> viewed = [
  StatusModel('assets/images/p11.jpeg', 'josna', '1 minutes agoM'),
  StatusModel('assets/images/p10.jpeg', 'aju', '10 minutes ago'),
  StatusModel('assets/images/p9.jpeg', 'chaithra', '21 minutes ago'),
  StatusModel('assets/images/p8.jpeg', 'unnimaya', '8 minutes ago'),

];
