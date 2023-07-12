abstract class LocalDataSource {
  const LocalDataSource();
  Future<void> init();

  Future<void> createBox<T>({Feature? title});

  Future<void> deleteBox({Feature? title});

  Future<void> save<T>(String key, T data, {Feature? title});

  T read<T>(String key, {Feature? title, T? defaultValue});

  Future<bool> delete<T>(String key, {Feature? title});

}

enum Feature {
  images,
  favorites,
  breeds,
  categories,
  votes,
}