class Jobs {
  int user;
  String title;
  String description;
  String status;

  Jobs({this.user, this.title, this.description, this.status});

  Jobs.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    title = json['title'];
    description = json['description'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['title'] = this.title;
    data['description'] = this.description;
    data['status'] = this.status;
    return data;
  }
}
