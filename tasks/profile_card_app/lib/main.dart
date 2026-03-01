import 'package:flutter/material.dart';
import 'package:profile_card_app/features/profile/presentation/Screen/profile_card.dart';

void main() {
  runApp(const ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ProfileCard()
    );
  }
}
