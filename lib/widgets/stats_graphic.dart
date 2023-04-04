import 'package:flutter/material.dart';

import '../components/size_config/size_config.dart';
import '../components/text/primary_text.dart';
import '../constants/color_constants/color_constants.dart';
import '../constants/image_url_constants/image_url_constants.dart';
import '../constants/text_constants/text_constants.dart';

Container graphicFirstLine(String asset, String text) {
  return Container(
    color: ColorConstants.white,
    width: SizeConfig.screenWidth,
    height: 45,
    alignment: Alignment.center,
    child: Row(
      children: [
        Image.asset(
          asset,
          width: 40,
        ),
        PrimaryText(
          text: text,
          size: 17,
        ),
      ],
    ),
  );
}

Container graphicSecondLine() {
  return Container(
    color: ColorConstants.mainGrey,
    width: SizeConfig.screenWidth,
    height: 30,
    child: Row(
      children: [
        graphicAsset(ImageUrlConstants.tableGraphicsField),
        sizedBoxThree(),
        ClipOval(child: graphicAsset(ImageUrlConstants.tableGraphicsBall)),
        sizedBoxThree(),
        graphicAsset(ImageUrlConstants.tableGraphicsShoes),
        sizedBoxThree(),
        graphicAsset(ImageUrlConstants.tableGraphicsYellowCard),
        sizedBoxThree(),
        graphicAsset(ImageUrlConstants.tableGraphicsRedCard),
        const SizedBox(
          width: 30,
        ),
        const PrimaryText(
          text: 'Season',
          fontWeight: FontWeight.bold,
        ),
      ],
    ),
  );
}

Image graphicAsset(String name) {
  return Image.asset(
    name,
    width: 35,
    height: 25,
  );
}

SizedBox sizedBoxThree() {
  return SizedBox(
    width: SizeConfig.blockSizeVertical! * 3.7,
  );
}

SizedBox sizedBoxFour() {
  return SizedBox(
    width: SizeConfig.blockSizeVertical! * 4.4,
  );
}

Container graphicLine(Color color, String t1, t2, t3, t4, t5, t6,
    {double width = 30}) {
  return Container(
    color: color,
    width: SizeConfig.screenWidth,
    height: 30,
    child: Row(
      children: [
        graphicWithNumber(t1),
        sizedBoxFour(),
        graphicWithNumber(t2),
        sizedBoxFour(),
        graphicWithNumber(t3),
        sizedBoxFour(),
        graphicWithNumber(t4),
        sizedBoxFour(),
        graphicWithNumber(t5),
        const SizedBox(
          width: 30,
        ),
        graphicWithNumber(
          t6,
          width: width,
        ),
      ],
    ),
  );
}

Container graphicWithNumber(String text, {double width = 30}) {
  return Container(
    width: width,
    alignment: Alignment.center,
    height: 25,
    child: PrimaryText(text: text),
  );
}

Card firstGraghic() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    elevation: 1.5,
    child: Column(
      children: [
        graphicFirstLine(ImageUrlConstants.leagueLaLiga, TextConstants.laLiga),
        graphicSecondLine(),
        graphicLine(
            ColorConstants.white, '38', '44', '16', '3', '0', '2019/2020',
            width: 70),
        graphicLine(
            ColorConstants.mainGrey, '38', '48', '16', '3', '0', '2018/2019',
            width: 70),
        graphicLine(
            ColorConstants.white, '37', '39', '18', '3', '0', '2017/2018',
            width: 70),
        graphicLine(
            ColorConstants.mainGrey, '38', '48', '16', '7', '0', '2016/2017',
            width: 70),
        graphicLine(
            ColorConstants.white, '29', '43', '12', '3', '0', '2015/2016',
            width: 70),
        graphicLine(
            ColorConstants.mainGrey, '38', '48', '16', '4', '0', '2014/2015',
            width: 70),
      ],
    ),
  );
}

Card secondGraphic() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    elevation: 1.5,
    child: Column(
      children: [
        graphicFirstLine(ImageUrlConstants.leagueUefa, TextConstants.uefa),
        graphicSecondLine(),
        graphicLine(
            ColorConstants.white, '38', '44', '16', '3', '0', '2019/2020',
            width: 70),
        graphicLine(
            ColorConstants.mainGrey, '38', '48', '16', '3', '0', '2018/2019',
            width: 70),
        graphicLine(
            ColorConstants.white, '37', '39', '18', '3', '0', '2017/2018',
            width: 70),
        graphicLine(
            ColorConstants.mainGrey, '38', '48', '16', '7', '0', '2016/2017',
            width: 70),
        graphicLine(
            ColorConstants.white, '29', '43', '12', '3', '0', '2015/2016',
            width: 70),
        graphicLine(
            ColorConstants.mainGrey, '38', '48', '16', '4', '0', '2014/2015',
            width: 70),
      ],
    ),
  );
}
