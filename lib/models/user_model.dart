class Album {

  final String name;
  final String mobile;
  final String status;
  //final String baseimage;

  Album({
    this.name='test',
    this.mobile='01822484490',
    this.status='1',
  //  this.baseimage,

  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      name: json['name'],
      mobile: json['mobile'],
      status: json['status'],
   //   baseimage: json['baseimage'],
    );
  }
}
