// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountModel _$AccountModelFromJson(Map<String, dynamic> json) =>
    _AccountModel(
      id: json['id'] as String?,
      createdAt: const DateTimeConverter()
          .fromJson((json['createdAt'] as num?)?.toInt()),
      balance: (json['balance'] as num?)?.toDouble(),
      equity: (json['equity'] as num?)?.toDouble(),
      accountName: json['accountName'] as String?,
      currentPhase: (json['currentPhase'] as num?)?.toInt(),
      numPhases: (json['numPhases'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toDouble(),
      active: json['active'] as bool?,
      isProAccount: json['isProAccount'] as bool?,
    );

Map<String, dynamic> _$AccountModelToJson(_AccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'balance': instance.balance,
      'equity': instance.equity,
      'accountName': instance.accountName,
      'currentPhase': instance.currentPhase,
      'numPhases': instance.numPhases,
      'size': instance.size,
      'active': instance.active,
      'isProAccount': instance.isProAccount,
    };
