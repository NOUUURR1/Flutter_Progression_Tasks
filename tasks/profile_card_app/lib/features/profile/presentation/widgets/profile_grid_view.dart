import 'package:flutter/material.dart';
import 'package:profile_card_app/features/profile/presentation/widgets/custom_grid_view.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        padding: const EdgeInsets.only(left: 15, right: 1),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          const CustomGridView(imageUrl: "assets/images/p1.png"),
          const CustomGridView(imageUrl: "assets/images/DEALWISE.png"),
          const CustomGridView(imageUrl: "assets/images/p3.png"),
        ],
      ),
    );
  }
}
