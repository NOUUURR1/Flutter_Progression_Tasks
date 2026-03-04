import 'package:flutter/material.dart';
import 'package:profile_card_app/core/constants/app_images.dart';
import 'package:profile_card_app/features/profile/presentation/widgets/app_bar.dart';
import 'package:profile_card_app/features/profile/presentation/widgets/footer_actions.dart';
import 'package:profile_card_app/features/profile/presentation/widgets/profile_grid_view.dart';
import 'package:profile_card_app/features/profile/presentation/widgets/profile_timeline.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Theme.of(context).brightness == Brightness.dark
                        ? AppImages.darkHeader
                        : AppImages.lightHeader,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/Profile.png"),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 45),
                        Text(
                          "Nourhan Elsayed",
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge?.copyWith(letterSpacing: 1.5),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Flutter Developer",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(letterSpacing: 1.2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: ProfileTimelineWidget(),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: ProfileGridView(),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: FooterActions(),
            ),
          ],
        ),
      ),
    );
  }
}
