import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/core.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
abstract class Account with _$Account {
  const factory Account({
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
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

  // 👇 Fake data for testing
  static Account account1() => Account(id: "1003", balance: 5000.0, equity: 20, accountName: "Joujou", currentPhase: 3, numPhases: 3, size: 3, active: true, isProAccount: true, createdAt: DateTime(2025, 3, 20));

  static Account account2() => Account(id: "1001", balance: 2500.0, equity: 20, accountName: "GHILANI", currentPhase: 0, numPhases: 3, size: 3, active: true, isProAccount: false, createdAt: DateTime(2025, 3, 20));

  static Account account3() => Account(id: "12345SFDfd", balance: 6340.0, equity: 20, accountName: "Djihane", currentPhase: 0, numPhases: 3, size: 3, active: true, isProAccount: false, createdAt: DateTime(2025, 3, 20));

  static List<Account> fakeData = [account1(), account2(), account3()];
}
