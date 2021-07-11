import '../../../../core/error/exception.dart';
import '../../../../core/use_case.dart';
import '../entities/users_todo_entity.dart';
import '../repositories/iusers_repository.dart';

class UsersTodoUseCase extends UseCase {
  final IUsersRepository _repository;

  UsersTodoUseCase(this._repository);

  @override
  Future<UsersTodo> call(_) async {
    try {
      final result = await _repository.getUsersTodo();

      if (result == null) {
        throw ServerException('No se encontro ningun listado de usuarios');
      }
      return result;
    } on ServerException catch (e) {
      throw Failure(e.message);
    }
  }
}
