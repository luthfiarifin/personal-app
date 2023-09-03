import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';
import 'package:personal_app/features/home/data/model/home_header_response_model.dart';

import '../../../../core/presentation/constant/gap_constant.dart';
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 5,
            child: _leftLayout(context),
          ),
          Expanded(
            flex: 4,
            child: _rightLayout(),
          ),
        ],
      ),
    );
  }

  Widget _rightLayout() {
    return Align(
      alignment: Alignment.centerRight,
      child: Image.network(
        header.image,
        height: 384,
      ),
    );
  }

  Widget _leftLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header.title,
          style: context.displayMedium?.copyWith(
            fontWeight: FontWeight.w900,
          ),
        ),
        GapConstant.h16,
        Text(
          header.description,
          style: context.bodyMedium,
        ),
        GapConstant.h48,
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
        GapConstant.h48,
        _buttonConnect(context),
      ],
    );
  }

  Widget _buttonConnect(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 190,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/ic_linkedin.svg',
              height: 32,
              width: 32,
              colorFilter: ColorFilter.mode(
                context.isDarkMode ? Colors.white : Colors.grey.shade600,
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
          size: 16,
          color: iconColor,
        ),
        GapConstant.w8,
        Text(
          text,
          style: context.bodySmall,
        )
      ],
    );
  }
}
