import 'package:flutter/material.dart';
import 'package:soccer_app/components/primary_tabbar.dart';
import 'package:soccer_app/components/size_config/size_config.dart';
import 'package:soccer_app/constants/color_constants/color_constants.dart';
import 'package:soccer_app/constants/text_constants/text_constants.dart';
import '../../components/card/graphic_card.dart';
import '../../components/text/primary_text.dart';
import '../../constants/image_url_constants/image_url_constants.dart';
import '../../widgets/stats_graphic.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      child: ListView(
        children: [
          Padding(
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
                  backgroundImage:
                      AssetImage(ImageUrlConstants.footballerMessi),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          PrimaryTabBarWidget(labelColor: Colors.white, tabBody: [
            Container(
              color: ColorConstants.mainGrey,
              child: profilTab(),
            ),
            Container(
              color: ColorConstants.mainGrey,
              child: statsTab(),
            ),
            Container(color: ColorConstants.mainGrey, child: carrerTab()),
          ], tabHeader: [
            headerContainer(TextConstants.profile, ColorConstants.tabColor),
            headerContainer(TextConstants.stats, ColorConstants.tabColor),
            const PrimaryText(
              text: TextConstants.career,
            )
          ]),
        ],
      ),
    );
  }

  Tab carrerTab() {
    return Tab(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.topCenter,
        child: Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight! / 3.8,
            color: ColorConstants.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      careerLine('Career', 1.0, 8.0, FontWeight.w600,
                          SizeConfig.screenWidth! / 3.2),
                      line(),
                      careerLine('Apps.', 12.0, 1.0, FontWeight.w300,
                          SizeConfig.screenWidth! / 5.5),
                      line(),
                      careerLine('Goals.', 12.0, 1.0, FontWeight.w300,
                          SizeConfig.screenWidth! / 5.5),
                      line(),
                      careerLine('Assissts', 12.0, 1.0, FontWeight.w300,
                          SizeConfig.screenWidth! / 5),
                    ],
                  ),
                ),
                careerSecondLine(ImageUrlConstants.footbalTeamBarcelona,
                    TextConstants.barcelona, '2004 - ', '772', '629', '270'),
                careerSecondLine(ImageUrlConstants.footbalTeamArgentina,
                    TextConstants.argentina, '2005-', '138', '70', '42')
              ],
            )),
      ),
    ));
  }

  Container careerSecondLine(String asset, String t1, t2, t3, t4, t5) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: ColorConstants.mainGrey))),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.all(2.0),
              child: SizedBox(
                width: SizeConfig.screenWidth! / 2.7,
                child: ListTile(
                  minLeadingWidth: 5,
                  horizontalTitleGap: 7,
                  leading: Image.asset(
                    asset,
                    width: 40,
                  ),
                  title: PrimaryText(
                    text: t1,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: PrimaryText(text: t2),
                ),
              )),
          SizedBox(
            width: SizeConfig.screenWidth! / 5.3,
            child: PrimaryText(text: t3),
          ),
          SizedBox(
            width: SizeConfig.screenWidth! / 5.3,
            child: PrimaryText(text: t4),
          ),
          SizedBox(
            width: SizeConfig.screenWidth! / 6.2,
            child: PrimaryText(text: t5),
          )
        ],
      ),
    );
  }

  Container line() {
    return Container(
      decoration: const BoxDecoration(
        border:
            Border(right: BorderSide(color: ColorConstants.mainGrey, width: 2)),
      ),
      width: 2,
      height: 20,
    );
  }

  Container careerLine(
      String text, double left, top, FontWeight fontweight, double width) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(color: ColorConstants.mainGrey, width: 2),
              bottom: BorderSide(color: ColorConstants.mainGrey, width: 2))),
      width: width,
      height: SizeConfig.blockSizeVertical! * 5,
      child: Padding(
        padding: EdgeInsets.only(top: top, left: left),
        child: PrimaryText(
          text: text,
          fontWeight: fontweight,
          size: 17,
        ),
      ),
    );
  }

  Tab statsTab() {
    return Tab(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          firstGraghic(),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 1,
          ),
          secondGraphic()
        ],
      ),
    ));
  }

  Tab profilTab() {
    return Tab(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                buildColumn('Height', '170 cm'),
                buildColumn('Weight', '72 kg'),
                buildColumn('Age', '33 years'),
              ],
            ),
            Row(
              children: <Widget>[
                buildColumn('Team', 'Barcelona'),
                buildPositionColumn('RW'),
                buildColumn('Shirt', '10'),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Container headerContainer(String text, Color color) {
    return Container(
      decoration:
          BoxDecoration(border: Border(right: BorderSide(color: color))),
      width: SizeConfig.screenWidth! / 2,
      height: 55,
      child: Center(
        child: PrimaryText(text: text),
      ),
    );
  }
}
