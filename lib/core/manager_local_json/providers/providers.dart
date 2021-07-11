import 'package:get_it/get_it.dart';

import '../data/manager_local_json.dart';
import '../domain/repositories/imanager_local_json.dart';

final sl = GetIt.instance;

Future<void> injectionDependenciesManagerLocalJson() async {
  sl.registerLazySingleton<IManagerLocalJson>(
    () => ManagerLocalJson(),
  );
}
