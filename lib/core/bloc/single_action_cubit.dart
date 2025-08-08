import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../exceptions/app_exception.dart';
import '../logger/loggy_types.dart';

part 'single_action_state.dart';

/// Common Cubit to perform a single action. like ADD account
abstract class SingleActionCubit<T extends SingleActionCubit<T>> extends Cubit<SingleActionState<T>> with BlocLoggy {
  SingleActionCubit() : super(const SingleActionInitial());

  @protected
  Future<bool> doAction(
    FutureOr<bool> Function() action, {
    VoidCallback? onSuccess,
    bool shouldEmitError = true,
  }) async {
    emit(const SingleActionLoading());
    try {
      final success = await action();

      if (!success) {
        if (shouldEmitError) {
          emit(const SingleActionFailure(exception: AppException.unknown));
        } else {
          emit(const SingleActionInitial());
        }
        return false;
      }

      onSuccess?.call();
      emit(const SingleActionSuccess());
      return true;
    } catch (e, s) {
      final exception = AppException.createAndLog('SingleActionCubit', e, s);
      emit(SingleActionFailure(exception: exception));
      return false;
    }
  }
}
