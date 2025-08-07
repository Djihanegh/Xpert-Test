// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountModel {
  String? get id;
  @DateTimeConverter()
  DateTime? get createdAt;
  double? get balance;
  double? get equity;
  String? get accountName;
  int? get currentPhase; // 0 means funded, 1 = eval1, etc.
  int? get numPhases;
  double? get size;
  bool? get active;
  bool? get isProAccount;

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AccountModelCopyWith<AccountModel> get copyWith =>
      _$AccountModelCopyWithImpl<AccountModel>(
          this as AccountModel, _$identity);

  /// Serializes this AccountModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.equity, equity) || other.equity == equity) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.currentPhase, currentPhase) ||
                other.currentPhase == currentPhase) &&
            (identical(other.numPhases, numPhases) ||
                other.numPhases == numPhases) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.isProAccount, isProAccount) ||
                other.isProAccount == isProAccount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, balance, equity,
      accountName, currentPhase, numPhases, size, active, isProAccount);

  @override
  String toString() {
    return 'AccountModel(id: $id, createdAt: $createdAt, balance: $balance, equity: $equity, accountName: $accountName, currentPhase: $currentPhase, numPhases: $numPhases, size: $size, active: $active, isProAccount: $isProAccount)';
  }
}

/// @nodoc
abstract mixin class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) _then) =
      _$AccountModelCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      @DateTimeConverter() DateTime? createdAt,
      double? balance,
      double? equity,
      String? accountName,
      int? currentPhase,
      int? numPhases,
      double? size,
      bool? active,
      bool? isProAccount});
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res> implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._self, this._then);

  final AccountModel _self;
  final $Res Function(AccountModel) _then;

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? balance = freezed,
    Object? equity = freezed,
    Object? accountName = freezed,
    Object? currentPhase = freezed,
    Object? numPhases = freezed,
    Object? size = freezed,
    Object? active = freezed,
    Object? isProAccount = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      balance: freezed == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      equity: freezed == equity
          ? _self.equity
          : equity // ignore: cast_nullable_to_non_nullable
              as double?,
      accountName: freezed == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPhase: freezed == currentPhase
          ? _self.currentPhase
          : currentPhase // ignore: cast_nullable_to_non_nullable
              as int?,
      numPhases: freezed == numPhases
          ? _self.numPhases
          : numPhases // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      active: freezed == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      isProAccount: freezed == isProAccount
          ? _self.isProAccount
          : isProAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AccountModel implements AccountModel {
  const _AccountModel(
      {this.id,
      @DateTimeConverter() this.createdAt,
      this.balance,
      this.equity,
      this.accountName,
      this.currentPhase,
      this.numPhases,
      this.size,
      this.active,
      this.isProAccount});
  factory _AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);

  @override
  final String? id;
  @override
  @DateTimeConverter()
  final DateTime? createdAt;
  @override
  final double? balance;
  @override
  final double? equity;
  @override
  final String? accountName;
  @override
  final int? currentPhase;
// 0 means funded, 1 = eval1, etc.
  @override
  final int? numPhases;
  @override
  final double? size;
  @override
  final bool? active;
  @override
  final bool? isProAccount;

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AccountModelCopyWith<_AccountModel> get copyWith =>
      __$AccountModelCopyWithImpl<_AccountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AccountModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.equity, equity) || other.equity == equity) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.currentPhase, currentPhase) ||
                other.currentPhase == currentPhase) &&
            (identical(other.numPhases, numPhases) ||
                other.numPhases == numPhases) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.isProAccount, isProAccount) ||
                other.isProAccount == isProAccount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, balance, equity,
      accountName, currentPhase, numPhases, size, active, isProAccount);

  @override
  String toString() {
    return 'AccountModel(id: $id, createdAt: $createdAt, balance: $balance, equity: $equity, accountName: $accountName, currentPhase: $currentPhase, numPhases: $numPhases, size: $size, active: $active, isProAccount: $isProAccount)';
  }
}

/// @nodoc
abstract mixin class _$AccountModelCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$AccountModelCopyWith(
          _AccountModel value, $Res Function(_AccountModel) _then) =
      __$AccountModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      @DateTimeConverter() DateTime? createdAt,
      double? balance,
      double? equity,
      String? accountName,
      int? currentPhase,
      int? numPhases,
      double? size,
      bool? active,
      bool? isProAccount});
}

/// @nodoc
class __$AccountModelCopyWithImpl<$Res>
    implements _$AccountModelCopyWith<$Res> {
  __$AccountModelCopyWithImpl(this._self, this._then);

  final _AccountModel _self;
  final $Res Function(_AccountModel) _then;

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? balance = freezed,
    Object? equity = freezed,
    Object? accountName = freezed,
    Object? currentPhase = freezed,
    Object? numPhases = freezed,
    Object? size = freezed,
    Object? active = freezed,
    Object? isProAccount = freezed,
  }) {
    return _then(_AccountModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      balance: freezed == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      equity: freezed == equity
          ? _self.equity
          : equity // ignore: cast_nullable_to_non_nullable
              as double?,
      accountName: freezed == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPhase: freezed == currentPhase
          ? _self.currentPhase
          : currentPhase // ignore: cast_nullable_to_non_nullable
              as int?,
      numPhases: freezed == numPhases
          ? _self.numPhases
          : numPhases // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      active: freezed == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      isProAccount: freezed == isProAccount
          ? _self.isProAccount
          : isProAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
