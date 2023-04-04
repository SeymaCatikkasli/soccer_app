import 'package:flutter/material.dart';
import 'package:soccer_app/pages/profile_page/profile_pages.dart';

import '../../constants/color_constants/color_constants.dart';
import '../../constants/text_constants/text_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.search, size: 30)],
        leading: const Icon(Icons.arrow_back),
        backgroundColor: ColorConstants.mainGreen,
        title: const Text(TextConstants.profile),
      ),
      body: const ProfilePage(),
    );
  }
}
