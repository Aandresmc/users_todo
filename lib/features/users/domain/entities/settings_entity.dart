class Settings {
  String s1;
  String s2;
  String s3;
  String s4;
  String s5;
  String s6;

  Settings({this.s1, this.s2, this.s3, this.s4, this.s5, this.s6});

  Settings.fromJson(Map<String, dynamic> json) {
    s1 = json['1'];
    s2 = json['2'];
    s3 = json['3'];
    s4 = json['4'];
    s5 = json['5'];
    s6 = json['6'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1'] = this.s1;
    data['2'] = this.s2;
    data['3'] = this.s3;
    data['4'] = this.s4;
    data['5'] = this.s5;
    data['6'] = this.s6;
    return data;
  }
}
