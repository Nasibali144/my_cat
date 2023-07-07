import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'local_data_source.dart';

class LocalDataSourceImpl extends LocalDataSource {

  @override
  Future<void> init() async {
    await Hive.initFlutter();
  }

  @override
  Future<Box<T>> createBox<T>(Feature title) async {
    final box = await Hive.openBox<T>(title.name);
    return box;
  }

  @override
  Future<void> deleteBox(Feature title) async {
    await Hive.deleteBoxFromDisk(title.name);
  }

  @override
  Future<bool> delete<T>(Feature title, String key) async {
    try {
      final box = Hive.box<T>(title.name);
      await box.delete(key);
      return true;
    } catch(e) {
      debugPrint("Log Error msg: $e");
      return false;
    }
  }

  @override
  T read<T>(Feature title, String key, {T? defaultValue}) {
    final box = Hive.box<T>(title.name);
    return box.get(key, defaultValue: defaultValue)!;
  }

  @override
  Future<void> save<T>(Feature title, String key, T data) async {
    final box = Hive.box<T>(title.name);
    await box.put(key, data);
  }

  @override
  Future<bool> update<T>(Feature title, String key, T data) {
    // TODO: implement update
    throw UnimplementedError();
  }

}

