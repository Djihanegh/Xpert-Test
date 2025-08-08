abstract class ItemRepository<T> {
  const ItemRepository();

  Future<List<T>> getAll();
}
