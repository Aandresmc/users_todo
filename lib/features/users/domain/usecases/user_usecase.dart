import '../../../../core/error/exception.dart';
import '../../../../core/use_case.dart';
import '../entities/user_detail_request.dart';
import '../entities/user_detail_todo_entity.dart';
import '../repositories/iusers_repository.dart';

class UserDetailTodoUseCase extends UseCase<UserTodoDetailRequest, UserDetailTodo> {
  final IUsersRepository _repository;

  UserDetailTodoUseCase(this._repository);

  @override
  Future<UserDetailTodo> call(request) async {
    try {
      final result = await _repository.getUserDetail(request.id, request.usersTodo);

      if (result == null) {
        throw ServerException('No se encontro ningun detalle de usuario');
      }
      return result;
    } on ServerException catch (e) {
      throw Failure(e.message);
    }
  }
}
