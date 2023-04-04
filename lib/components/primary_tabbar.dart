import 'package:flutter/material.dart';
import 'package:soccer_app/components/size_config/size_config.dart';
import 'package:soccer_app/constants/color_constants/color_constants.dart';

class PrimaryTabBarWidget extends StatefulWidget {
  final List<Widget> tabBody;
  final List<Widget> tabHeader;
  final double? height;
  final Color? labelColor;
  final bool? isScrollable;
  final Color? unselectedLabelColor;
  const PrimaryTabBarWidget({
    Key? key,
    required this.tabHeader,
    required this.tabBody,
    this.isScrollable = false,
    this.height,
    this.labelColor,
    this.unselectedLabelColor,
  }) : super(key: key);

  @override
  State<PrimaryTabBarWidget> createState() => _PrimaryTabBarWidgetState();
}

class _PrimaryTabBarWidgetState extends State<PrimaryTabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: widget.tabHeader.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          height: 30,
          width: SizeConfig.screenWidth! / 1.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: ColorConstants.white,
            border: Border.all(
              color: ColorConstants.tabColor,
            ),
          ),
          child: TabBar(
            indicatorColor: ColorConstants.tabLineColor,
            indicatorWeight: 2.0,
            labelColor: widget.labelColor ?? Colors.white,
            labelPadding: const EdgeInsets.only(top: 4),
            unselectedLabelColor: ColorConstants.tabColor,
            isScrollable: widget.isScrollable!,
            tabs: widget.tabHeader,
            controller: _tabController,
            indicator: BoxDecoration(
                color: ColorConstants.mainGreen,
                border:
                    Border.all(color: ColorConstants.tabLineColor, width: 1)),
          ),
        ),
        SizedBox(
          height: widget.height ?? SizeConfig.screenHeight,
          child:
              TabBarView(controller: _tabController, children: widget.tabBody),
        )
      ],
    );
  }
}
