import 'package:meta/meta.dart';
import 'users_todo_entity.dart';

class UserTodoDetailRequest {
  String id;
  UsersTodo usersTodo;

  UserTodoDetailRequest({@required this.usersTodo, @required this.id})
      : assert(id != null),
        assert(usersTodo != null);
}
