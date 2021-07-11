import 'package:flutter/material.dart';

import '../../../../../core/error/exception.dart';
import '../../../domain/entities/user_detail_request.dart';
import '../../../domain/entities/user_detail_todo_entity.dart';
import '../../../domain/usecases/usecases.dart';

enum UserDetailTodoState {
  loading,
  loaded,
  initial,
}

class UserBloc extends ChangeNotifier {
  final UserDetailTodoUseCase userDetailTodoUseCase;

  UserBloc({
    @required this.userDetailTodoUseCase,
  });

  UserDetailTodo userDetailTodo;

  var userDetailTodoState = UserDetailTodoState.initial;

  Future<void> getUserDetailTodo(UserTodoDetailRequest request) async {
    userDetailTodoState = UserDetailTodoState.loading;
    notifyListeners();

    try {
      userDetailTodo = await userDetailTodoUseCase(null);
    } on Failure {
      rethrow;
    } finally {
      userDetailTodoState = UserDetailTodoState.loaded;
      notifyListeners();
    }
  }
}
