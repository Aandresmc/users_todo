import '../entities/user_detail_todo_entity.dart';
import '../entities/users_todo_entity.dart';

abstract class IUsersRepository {
  Future<UsersTodo> getUsersTodo();
  Future<UserDetailTodo> getUserDetail(String id, UsersTodo usersTodo);
}
