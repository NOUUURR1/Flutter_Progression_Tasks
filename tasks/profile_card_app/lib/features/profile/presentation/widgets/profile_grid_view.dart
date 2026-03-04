import 'package:flutter/material.dart';
import 'package:profile_card_app/features/profile/presentation/widgets/custom_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({super.key});
  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          CustomGridView(
            imageUrl: "assets/images/p1.png",
            onTap: () => _launchURL("https://github.com/NOUUURR1/mood_mate"),
          ),
          CustomGridView(
            imageUrl: "assets/images/DEALWISE.png",
            onTap: () => _launchURL("https://github.com/aymanSalahA/deal_wise"),
          ),
          Center(
            child: CustomGridView(
              imageUrl: "assets/images/p3.png",
              onTap: () =>
                  _launchURL("https://github.com/NOUUURR1/heart_guardian"),
            ),
          ),
        ],
      ),
    );
  }
}
