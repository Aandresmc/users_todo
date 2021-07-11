import 'jobs_entity.dart';
import 'user_entity.dart';

class UserDetailTodo {
  User user;
  List<Jobs> jobs;

  UserDetailTodo({this.user, this.jobs});

  UserDetailTodo.fromJson(Map<String, dynamic> json) {
    if (json['user'] != null) {
      user = new User();
      user = json['users'];
    }
    if (json['jobs'] != null) {
      jobs = new List<Jobs>();
      json['jobs'].forEach((v) {
        jobs.add(new Jobs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['users'] = this.user.toJson();
    }
    if (this.jobs != null) {
      data['jobs'] = this.jobs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
