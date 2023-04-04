import 'package:flutter/material.dart';
import 'package:soccer_app/components/text/primary_text.dart';
import 'package:soccer_app/constants/color_constants/color_constants.dart';
import 'package:soccer_app/constants/image_url_constants/image_url_constants.dart';

class PlayerTitleWidget extends StatelessWidget {
  const PlayerTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListTile(
        title: const Padding(
          padding: EdgeInsets.only(top: 11.0),
          child: PrimaryText(
            text: 'Lionel Messi',
            size: 16,
            color: Color.fromARGB(255, 47, 47, 47),
            fontWeight: FontWeight.bold,
          ),
        ),
        isThreeLine: true,
        subtitle: Row(
          children: [
            ClipOval(
              child: Image.asset(
                ImageUrlConstants.footbalTeamBarcelona,
                width: 15,
                height: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: PrimaryText(
                text: 'Barcelona',
                size: 15,
              ),
            ),
          ],
        ),
        leading: const CircleAvatar(
          backgroundColor: ColorConstants.tabColor,
          radius: 28,
          child: CircleAvatar(
            radius: 27,
            backgroundImage: AssetImage(ImageUrlConstants.footballerMessi),
          ),
        ),
      ),
    );
  }
}
