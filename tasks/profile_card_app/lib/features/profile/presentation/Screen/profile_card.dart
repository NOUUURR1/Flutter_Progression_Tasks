import 'package:flutter/material.dart';
import 'package:profile_card_app/features/profile/presentation/widgets/profile_timeline.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F2525),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Center(child: Text("ProfileCard")),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.light_mode)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
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
                      children: const [
                        SizedBox(height: 45),
                        Text(
                          "Nourhan Elsayed",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(fontSize: 15, letterSpacing: 1.2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: ProfileTimelineWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
