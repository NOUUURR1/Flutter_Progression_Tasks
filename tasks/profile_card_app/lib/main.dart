import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_card_app/core/theme/theme_provider.dart';
import 'package:profile_card_app/features/profile/presentation/Screen/profile_card.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const ProfileCardApp(),
    ),
  );
}

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.currentTheme.copyWith(
            textTheme: GoogleFonts.agbalumoTextTheme(
              themeProvider.currentTheme.textTheme,
            ),
          ),
          home: const ProfileCard(),
        );
      },
    );
  }
}