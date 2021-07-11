import 'core/providers/providers.dart';
import 'features/users/providers/provider.dart';

Future<void> injectionDependencies() async {
  await injectionCore();
  await injectionUser();
}
