import 'jobs_entity.dart';
import 'settings_entity.dart';
import 'user_entity.dart';

class UsersTodo {
  List<User> users = [];
  List<Jobs> jobs = [];
  Settings settings;

  UsersTodo({this.users, this.jobs, this.settings});

  UsersTodo.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = new List<User>();
      json['users'].forEach((v) {
        users.add(new User.fromJson(v));
      });
    }
    if (json['jobs'] != null) {
      jobs = new List<Jobs>();
      json['jobs'].forEach((v) {
        jobs.add(new Jobs.fromJson(v));
      });
    }
    settings = json['settings'] != null ? new Settings.fromJson(json['settings']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.users != null) {
      data['users'] = this.users.map((v) => v.toJson()).toList();
    }
    if (this.jobs != null) {
      data['jobs'] = this.jobs.map((v) => v.toJson()).toList();
    }
    if (this.settings != null) {
      data['settings'] = this.settings.toJson();
    }
    return data;
  }
}
