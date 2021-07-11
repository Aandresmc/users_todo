import 'package:get_it/get_it.dart';
import 'package:users_todo/features/users/domain/usecases/usecases.dart';

import '../../../core/manager_local_json/domain/repositories/imanager_local_json.dart';
import '../data/repositories/users_repository.dart';
import '../domain/repositories/iusers_repository.dart';
import '../presentation/pages/user/user_bloc.dart';
import '../presentation/pages/users/users_bloc.dart';

// core

//! Feature - users

final sl = GetIt.instance;

// Feature - user
Future<void> injectionUsers() async {
  // Bloc
  sl.registerFactory(
    () => UsersBloc(
      usersTodoUseCase: sl<UsersTodoUseCase>(),
    ),
  );

  sl.registerFactory(
    () => UserBloc(
      userDetailTodoUseCase: sl<UserDetailTodoUseCase>(),
    ),
  );

  // Repository
  sl.registerLazySingleton<IUsersRepository>(() => UsersRepository(sl<IManagerLocalJson>()));

  // Use cases
  sl.registerLazySingleton(
    () => UsersTodoUseCase(sl<IUsersRepository>()),
  );

  sl.registerFactory(
    () => UserDetailTodoUseCase(sl<IUsersRepository>()),
  );
}
