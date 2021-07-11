import 'dart:convert';

import 'package:flutter/services.dart';

import '../domain/exceptions/fetch_exception.dart';
import '../domain/repositories/imanager_local_json.dart';

class ManagerLocalJson extends IManagerLocalJson {
  @override
  Future fetch(String pathLocal) async {
    try {
      final String response = await rootBundle.loadString(pathLocal);
      final data = await json.decode(response);
      return data;
    } catch (_) {
      LocalJsonFetchException(
          'Hubo un error al tratar de consultar la siguiente ruta ${pathLocal} en el dispositivo');
    }
  }
}
