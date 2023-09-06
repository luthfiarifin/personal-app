import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';
import 'package:personal_app/features/home/data/model/home_contact_response_model.dart';

import '../../../../core/presentation/constant/gap_constant.dart';
import '../../../../core/presentation/util/launch_util.dart';
import '../widget/chip_widget.dart';
import '../widget/home_background.dart';

class ContactLayout extends StatelessWidget {
  final HomeContactResponseModel contact;

  const ContactLayout({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      isGrey: true,
      child: Column(
        children: [
          const ChipWidget(
            text: 'Contact',
          ),
          GapConstant.h24,
          SizedBox(
            width: 700,
            child: Text(
              contact.text,
              textAlign: TextAlign.center,
              style: context.bodyLarge,
            ),
          ),
          GapConstant.h32,
          _emailLayout(context),
          GapConstant.h32,
          Text(
            contact.others.text,
            style: context.bodyMedium,
          ),
          GapConstant.h8,
          _otherPlatforms(context),
        ],
      ),
    );
  }

  Widget _emailLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.email_outlined,
          size: 32,
        ),
        GapConstant.w24,
        Text(
          contact.email,
          style: context.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        GapConstant.w24,
        IconButton(
          onPressed: () {
            _launchUrl('mailto:${contact.email}');
          },
          icon: const Icon(Icons.open_in_new),
        ),
      ],
    );
  }

  Widget _otherPlatforms(BuildContext context) {
    var items = contact.others.items;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items
          .mapIndexed(
            (i, e) => Padding(
              padding: EdgeInsets.only(right: i == items.length - 1 ? 0 : 2),
              child: IconButton(
                icon: Image.network(
                  e.icon ?? '',
                  height: 24,
                  width: 24,
                  color: context.textColor,
                ),
                onPressed: () {
                  _launchUrl(e.link);
                },
              ),
            ),
          )
          .toList(),
    );
  }

  void _launchUrl(String url) {
    LaunchUtil.launchWeb(url);
  }
}
