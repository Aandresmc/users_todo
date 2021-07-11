import '../../../../core/error/exception.dart';
import '../../../../core/manager_local_json/domain/repositories/imanager_local_json.dart';

import '../../domain/entities/user_detail_todo_entity.dart';
import '../../domain/entities/users_todo_entity.dart';
import '../../domain/repositories/iusers_repository.dart';

class UsersRepository extends IUsersRepository {
  final IManagerLocalJson _managerLocalJson;

  UsersRepository(this._managerLocalJson);

  @override
  Future<UserDetailTodo> getUserDetail(String id, UsersTodo usersTodo) async {
    try {
      final _user = usersTodo.users.firstWhere((user) => identical(user.id, id));
      final _jobs = usersTodo.jobs.firstWhere((job) => identical(job.user, id));

      final _response = {"user": _user, "jobs": _jobs};

      return UserDetailTodo.fromJson(_response);
    } catch (e) {
      throw ServerException(e.message);
    }
  }

  @override
  Future<UsersTodo> getUsersTodo() async {
    try {
      final _response = await _managerLocalJson.fetch('assets/dummy_data.json');
      return UsersTodo.fromJson(_response);
    } catch (e) {
      throw ServerException(e?.message);
    }
  }
}
