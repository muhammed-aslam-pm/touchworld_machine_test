import 'package:flutter/material.dart';
import 'package:touchworld_machine_test/utils/image_constants.dart';
import 'package:touchworld_machine_test/utils/style_constants.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(ImageConstants.profileImage),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Hello John",
                  style: StyleConstants.profileName,
                ),
                Text(
                  "View Profile",
                  style: StyleConstants.profileDescription,
                )
              ],
            )
          ],
        ),
        const Icon(Icons.arrow_forward)
      ],
    );
  }
}
