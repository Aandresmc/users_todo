import 'dart:async';

import 'package:flutter/material.dart';

import 'app.dart';
import 'injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await injectionDependencies();

  // This captures errors reported by the Flutter framework.
  FlutterError.onError = (FlutterErrorDetails details) {
    Zone.current.handleUncaughtError(details.exception, details.stack);
  };

  runZonedGuarded(
    () => runApp(MyApp()),
    (Object error, stackTrace) {
      print(error);
    },
  );
}
