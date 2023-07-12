import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'local_data_source.dart';

class LocalDataSourceImpl extends LocalDataSource {
  final Feature title;
  const LocalDataSourceImpl({required this.title});

  @override
  Future<void> init() async {
    await Hive.initFlutter();
  }

  @override
  Future<void> createBox<T>({Feature? title}) async {
    await Hive.openBox<T>((title ?? this.title).name);
  }

  @override
  Future<void> deleteBox({Feature? title}) async {
    await Hive.deleteBoxFromDisk((title ?? this.title).name);
  }

  @override
  Future<bool> delete<T>( String key, {Feature? title}) async {
    try {
      final box = Hive.box<T>((title ?? this.title).name);
      await box.delete(key);
      return true;
    } catch(e) {
      debugPrint("Log Error msg: $e");
      return false;
    }
  }

  @override
  T read<T>(String key, {Feature? title, T? defaultValue}) {
    final box = Hive.box<T>((title ?? this.title).name);
    return box.get(key, defaultValue: defaultValue)!;
  }

  @override
  Future<void> save<T>(String key, T data, {Feature? title}) async {
    final box = Hive.box<T>((title ?? this.title).name);
    await box.put(key, data);
  }
}

