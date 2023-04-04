import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:soccer_app/components/text/primary_text.dart';
import 'package:soccer_app/constants/image_url_constants/image_url_constants.dart';
import 'package:soccer_app/constants/text_constants/text_constants.dart';

class PlayerCarrerWidget extends StatelessWidget {
  const PlayerCarrerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        context.emptySizedHeightBoxLow3x,
        const PrimaryText(
          text: 'Futbolcu Kariyeri',
          fontWeight: FontWeight.w700,
          size: 18,
        ),
        const Divider(),
        DataTable(dataRowHeight: 80, columnSpacing: 35, columns: const [
          DataColumn(label: Text('Kariyer')),
          DataColumn(label: Text('Maç')),
          DataColumn(label: Text('Gol')),
          DataColumn(label: Text('Assits')),
        ], rows: [
          DataRow(cells: [
            DataCell(Row(
              children: [
                Image.asset(
                  ImageUrlConstants.footbalTeamBarcelona,
                  width: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    PrimaryText(
                      text: TextConstants.barcelona,
                      fontWeight: FontWeight.bold,
                    ),
                    PrimaryText(text: '2004')
                  ],
                ),
              ],
            )),
            const DataCell(Text('4')),
            const DataCell(Text('12')),
            const DataCell(Text('42')),
          ]),
          DataRow(cells: [
            DataCell(Row(
              children: [
                Image.asset(
                  ImageUrlConstants.footbalTeamBarcelona,
                  width: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    PrimaryText(
                      text: TextConstants.barcelona,
                      fontWeight: FontWeight.bold,
                    ),
                    PrimaryText(text: '2004')
                  ],
                ),
              ],
            )),
            const DataCell(Text('4')),
            const DataCell(Text('12')),
            const DataCell(Text('42')),
          ])
        ]),
      ],
    );
  }
}
