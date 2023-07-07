import 'package:hive/hive.dart';

abstract class LocalDataSource {
  Future<void> init();

  Future<Box<T>> createBox<T>(Feature title);

  Future<void> deleteBox(Feature title);

  Future<void> save<T>(Feature title, String key, T data);

  T read<T>(Feature title, String key);

  Future<bool> delete<T>(Feature title, String key);

  Future<bool> update<T>(Feature title, String key, T data);
}

enum Feature {
  images,
  favorites,
  breeds,
  categories,
  votes,
}