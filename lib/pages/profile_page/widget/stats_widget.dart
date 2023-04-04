import 'package:flutter/material.dart';
import 'package:soccer_app/components/size_config/size_config.dart';
import 'package:soccer_app/components/text/primary_text.dart';
import 'package:soccer_app/constants/color_constants/color_constants.dart';
import 'package:soccer_app/constants/image_url_constants/image_url_constants.dart';
import '../../../constants/text_constants/text_constants.dart';

class PlayerStatsWidget extends StatelessWidget {
  const PlayerStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Container(
      color: ColorConstants.mainGrey,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            child: ListView(
              shrinkWrap: true,
              children: [
                grapTitle(ImageUrlConstants.leagueLaLiga, TextConstants.laLiga),
                DataTable(
                    headingRowColor: MaterialStateColor.resolveWith(
                        (states) => ColorConstants.mainGrey),
                    headingRowHeight: 40,
                    columnSpacing: 15,
                    columns: tableHeader,
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('4')),
                        DataCell(Text('12')),
                        DataCell(Text('42')),
                        DataCell(Text('4')),
                        DataCell(Text('12')),
                        DataCell(Text('4223')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('4')),
                        DataCell(Text('12')),
                        DataCell(Text('42')),
                        DataCell(Text('4')),
                        DataCell(Text('12')),
                        DataCell(Text('4223')),
                      ]),
                    ]),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  List<DataColumn> get tableHeader {
    return [
      DataColumn(label: graphicAsset(ImageUrlConstants.tableGraphicsField)),
      DataColumn(label: graphicAsset(ImageUrlConstants.tableGraphicsBall)),
      DataColumn(label: graphicAsset(ImageUrlConstants.tableGraphicsShoes)),
      DataColumn(
          label: graphicAsset(ImageUrlConstants.tableGraphicsYellowCard)),
      DataColumn(label: graphicAsset(ImageUrlConstants.tableGraphicsRedCard)),
      const DataColumn(label: Text('Sezon')),
    ];
  }

  Container grapTitle(
    String asset,
    String text,
  ) {
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

  Image graphicAsset(String name) {
    return Image.asset(
      name,
      height: 20,
    );
  }
}
