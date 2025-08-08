import 'package:flutter/material.dart';
import '../../../../core/core.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xFF0B0F2B), body: ChallengeGridView());
  }
}
