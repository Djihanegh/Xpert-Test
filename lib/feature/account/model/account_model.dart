import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/core.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
abstract class AccountModel with _$AccountModel {
  const factory AccountModel({
    String? id,
    @DateTimeConverter() DateTime? createdAt,
    double? balance,
    double? equity,
    String? accountName,
    int? currentPhase, // 0 means funded, 1 = eval1, etc.
    int? numPhases,
    double? size,
    bool? active,
    bool? isProAccount,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);
}
