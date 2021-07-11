import 'package:flutter/material.dart';

import '../../../../../core/error/exception.dart';
import '../../../domain/entities/users_todo_entity.dart';
import '../../../domain/usecases/usecases.dart';

enum UsersState {
  loading,
  loaded,
  initial,
}

class UsersBloc extends ChangeNotifier {
  final UsersTodoUseCase usersTodoUseCase;

  UsersBloc({
    @required this.usersTodoUseCase,
  });

  UsersTodo usersTodo;
  var usersTodoStateState = UsersState.initial;

  Future<void> getUsersTodo() async {
    usersTodoStateState = UsersState.loading;
    notifyListeners();

    try {
      usersTodo = await usersTodoUseCase(null);
    } on Failure {
      rethrow;
    } finally {
      usersTodoStateState = UsersState.loaded;
      notifyListeners();
    }
  }
}
