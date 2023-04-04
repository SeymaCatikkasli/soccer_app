import 'package:flutter/material.dart';
import 'package:soccer_app/components/primary_tabbar.dart';
import 'package:soccer_app/components/size_config/size_config.dart';
import 'package:soccer_app/constants/color_constants/color_constants.dart';
import 'package:soccer_app/constants/text_constants/text_constants.dart';
import 'package:soccer_app/pages/profile_page/widget/index.dart';
import '../../components/text/primary_text.dart';

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
          const PlayerTitleWidget(),
          const SizedBox(
            height: 8,
          ),
          tabBar(),
        ],
      ),
    );
  }

  PrimaryTabBarWidget tabBar() {
    return PrimaryTabBarWidget(
      labelColor: ColorConstants.white,
      tabHeader: [
        headerContainer(TextConstants.profile, ColorConstants.tabColor),
        headerContainer(TextConstants.stats, ColorConstants.tabColor),
      ],
      tabBody: const [
        PlayerProfileWidget(),
        PlayerStatsWidget(),
      ],
    );
  }

  SizedBox headerContainer(String text, Color color) {
    return SizedBox(
      width: SizeConfig.screenWidth! / 2,
      height: 55,
      child: Center(
        child: PrimaryText(text: text),
      ),
    );
  }
}
