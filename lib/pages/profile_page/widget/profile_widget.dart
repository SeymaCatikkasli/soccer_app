import 'package:flutter/material.dart';
import 'package:soccer_app/components/text/primary_text.dart';
import 'package:soccer_app/constants/color_constants/color_constants.dart';
import 'package:soccer_app/pages/profile_page/widget/carrer_widget.dart';

class PlayerProfileWidget extends StatelessWidget {
  const PlayerProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Container(
      color: ColorConstants.mainGrey,
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                buildColumn('Takım', 'Barcelona'),
                buildColumn('Yaş', '33 years'),
                buildColumn('Forma', '10'),
              ],
            ),
            const PlayerCarrerWidget()
          ],
        ),
      ),
    ));
  }

  Widget buildColumn(String label, String value) {
    return Expanded(
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(color: ColorConstants.grey),
            bottom: BorderSide(color: ColorConstants.grey),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryText(
              text: label,
              fontWeight: FontWeight.w300,
            ),
            PrimaryText(
              text: value,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPositionColumn(String position) {
    return Expanded(
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(color: ColorConstants.grey),
            bottom: BorderSide(color: ColorConstants.grey),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PrimaryText(
              text: 'Position',
              fontWeight: FontWeight.w300,
            ),
            Container(
              width: 25,
              height: 15,
              color: ColorConstants.pink,
              child: Center(
                child: PrimaryText(
                  text: position,
                  color: ColorConstants.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
