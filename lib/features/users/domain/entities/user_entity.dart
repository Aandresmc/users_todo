class User {
  int id;
  String name;
  String lastName;
  String birthDate;
  bool active;

  User({this.id, this.name, this.lastName, this.birthDate, this.active});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lastName = json['last_name'];
    birthDate = json['birth_date'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['last_name'] = this.lastName;
    data['birth_date'] = this.birthDate;
    data['active'] = this.active;
    return data;
  }
}
