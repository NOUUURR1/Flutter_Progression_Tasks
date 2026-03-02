import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_card_app/features/profile/presentation/Screen/profile_card.dart';

void main() {
  runApp(const ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.agbalumo().fontFamily),
      home: ProfileCard(),
    );
  }
}
