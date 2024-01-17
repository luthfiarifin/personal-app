import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';
import 'package:personal_app/core/presentation/extensions/responsive_extension.dart';
import 'package:personal_app/features/home/data/model/home_header_response_model.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/presentation/constant/gap_constant.dart';
import '../../../../core/presentation/util/launch_util.dart';
import '../../../../core/presentation/widget/image_loader.dart';
import '../widget/home_background.dart';

class HomeHeaderLayout extends StatelessWidget {
  final HomeHeaderResponseModel header;

  const HomeHeaderLayout({
    super.key,
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: ResponsiveRowColumn(
        columnMainAxisAlignment: MainAxisAlignment.center,
        columnSpacing: 32,
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        layout: context.isDisplayLargeThanTablet
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 5,
            columnOrder: 2,
            child: _leftLayout(context),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 4,
            columnOrder: 1,
            child: _rightLayout(context),
          ),
        ],
      ),
    );
  }

  Widget _rightLayout(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: context.isDisplayLargeThanTablet ? 380 : 300),
      child: ImageLoader(
        header.image,
        height: context.isDisplayLargeThanTablet ? 340 : 280,
      ),
    );
  }

  Widget _leftLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              header.title,
              style: context.displayMedium?.copyWith(
                fontWeight: FontWeight.w900,
              ),
              textScaleFactor: context.titleScaleFactor,
            ),
            GapConstant.w8,
            Lottie.asset(
              'assets/lottie/lo_hello.json',
              width: 72,
            ),
          ],
        ),
        GapConstant.h16,
        Text(
          header.description,
          style: context.bodyMedium,
        ),
        GapConstant.h32,
        _headerItem(
          context: context,
          icon: Icons.location_on_outlined,
          text: header.location,
        ),
        GapConstant.h8,
        _headerItem(
          context: context,
          icon: Icons.radio_button_on,
          text: header.isAvailableForProject
              ? 'Available for new projects'
              : 'Currently, not available',
          iconColor:
              header.isAvailableForProject ? Colors.green.shade600 : Colors.red,
        ),
        GapConstant.h32,
        _buttonConnect(context),
      ],
    );
  }

  Widget _buttonConnect(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 190,
      child: ElevatedButton(
        onPressed: _onConnectClicked,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/ic_linkedin.svg',
              height: 32,
              width: 32,
              colorFilter: ColorFilter.mode(
                context.textColor,
                BlendMode.srcIn,
              ),
            ),
            GapConstant.w4,
            Text(
              header.linkedin.text!,
              style: context.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  Row _headerItem({
    required BuildContext context,
    required IconData icon,
    required String text,
    Color? iconColor,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 24,
          color: iconColor,
        ),
        GapConstant.w12,
        Text(
          text,
          style: context.bodyMedium,
        )
      ],
    );
  }

  void _onConnectClicked() async {
    await LaunchUtil.launchWeb(header.linkedin.link);
  }
}
