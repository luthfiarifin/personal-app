import 'package:flutter/material.dart';
import 'package:personal_app/core/presentation/constant/gap_constant.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';
import 'package:personal_app/features/home/data/model/home_about_me_response_model.dart';
import 'package:personal_app/features/home/presentation/widget/home_background.dart';

import '../widget/chip_widget.dart';

class AboutMeLayout extends StatelessWidget {
  final HomeAboutMeResponseModel aboutMe;

  const AboutMeLayout({
    super.key,
    required this.aboutMe,
  });

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      isGrey: true,
      child: Column(
        children: [
          const ChipWidget(text: 'About Me'),
          GapConstant.h48,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.network(
                    aboutMe.image,
                    height: 500,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      aboutMe.title,
                      style: context.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GapConstant.h16,
                    Text(
                      aboutMe.description,
                      style: context.bodyMedium,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
