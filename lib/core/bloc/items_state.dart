part of 'items_cubit.dart';

@immutable
sealed class ItemsState<T> {
  const ItemsState();
}

class ItemsInitial<T> extends ItemsState<T> {
  const ItemsInitial();
}

class ItemsLoading<T> extends ItemsState<T> {
  const ItemsLoading();
}

class ItemsLoaded<T> extends ItemsState<T> {
  const ItemsLoaded({required this.items});

  final List<T> items;
}

class ItemsError<T> extends ItemsState<T> {
  final AppException exception;
  const ItemsError({required this.exception});
}
