/// A provider interface with CRUD operations.
abstract class ItemProvider<T> {
  const ItemProvider();

  Future<T?> get(String id);

  Stream<T?> getStream(String id);

  Stream<List<T>> getAllStream();

  Future<List<T>> getAll();

  Future<List<T>> getForIds(List<String> ids);

  Future<String> add(T item);

  Future<void> update(T item);

  Future<void> delete(String id);
}
