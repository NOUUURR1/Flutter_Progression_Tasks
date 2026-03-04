import 'package:flutter/material.dart';
import 'package:profile_card_app/core/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: const Text("Profile Card"),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            themeProvider.toggleTheme();
          },
          icon: Icon(
            themeProvider.isDarkMode
                ? Icons.light_mode
                : Icons.dark_mode,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}