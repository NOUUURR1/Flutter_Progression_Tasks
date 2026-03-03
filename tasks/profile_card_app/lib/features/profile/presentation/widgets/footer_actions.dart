import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterActions extends StatelessWidget {
  const FooterActions({super.key});
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => _launchURL('https://github.com/NOUUURR1'),
          child: SvgPicture.asset(
            "assets/icons/github.svg",
            width: 40,
            height: 40,
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () =>
              _launchURL('https://www.linkedin.com/in/nourhanelsayed12/'),
          child: SvgPicture.asset(
            "assets/icons/linkedin.svg",
            width: 50,
            height: 50,
          ),
        ),
      ],
    );
  }
}
