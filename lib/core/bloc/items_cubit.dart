import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../exceptions/app_exception.dart';
import '../logger/loggy_types.dart';
import '../repository/item_repository.dart';

part 'items_state.dart';

/// Common Cubit to load items from a Repository.
class ItemsCubit<T, R extends ItemRepository<T>> extends Cubit<ItemsState<T>> with BlocLoggy {
  ItemsCubit({
    required this.itemRepository,
  }) : super(const ItemsInitial()) {
    unawaited(load());
  }

  final R itemRepository;

  @protected
  Future<List<T>> getItems() {
    return itemRepository.getAll();
  }

  Future<void> load() async {
    emit(const ItemsLoading());
    try {
      final items = await getItems();
      emit(ItemsLoaded<T>(items: items));
    } catch (e, st) {
      loggy.error('Failed to load items', e, st);
      emit(ItemsError<T>(exception: AppException.failedToLoadItems));
    }
  }
}
