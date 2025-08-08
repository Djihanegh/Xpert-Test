part of 'single_action_cubit.dart';

@immutable
sealed class SingleActionState<T> {
  const SingleActionState();
}

class SingleActionInitial<T> extends SingleActionState<T> {
  const SingleActionInitial();
}

class SingleActionLoading<T> extends SingleActionState<T> {
  const SingleActionLoading();
}

class SingleActionFailure<T> extends SingleActionState<T> {
  const SingleActionFailure({required this.exception});

  final AppException exception;
}

class SingleActionSuccess<T> extends SingleActionState<T> {
  const SingleActionSuccess();
}
