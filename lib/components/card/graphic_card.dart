import 'package:flutter/material.dart';

import '../../constants/color_constants/color_constants.dart';
import '../text/primary_text.dart';

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
