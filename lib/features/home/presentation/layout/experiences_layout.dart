import 'package:flutter/material.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';
import 'package:personal_app/core/presentation/extensions/date_extension.dart';
import 'package:personal_app/features/home/data/model/home_experiences_item_response_model.dart';
import 'package:personal_app/features/home/data/model/home_experiences_response_model.dart';

import '../../../../core/presentation/constant/gap_constant.dart';
import '../../../../core/presentation/widget/image_loader.dart';
import '../widget/chip_widget.dart';
import '../widget/home_background.dart';

class ExperiencesLayout extends StatelessWidget {
  final HomeExperiencesResponseModel experiences;

  const ExperiencesLayout({
    super.key,
    required this.experiences,
  });

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      isGrey: true,
      child: Column(
        children: [
          const ChipWidget(
            text: 'Experience',
          ),
          GapConstant.h24,
          Text(
            experiences.text,
            style: context.bodyLarge,
          ),
          GapConstant.h24,
          _listExperience(),
        ],
      ),
    );
  }

  Widget _listExperience() {
    return Column(
      children: experiences.items
          .map(
            (e) => _ExperienceItem(
              item: e,
            ),
          )
          .toList(),
    );
  }
}

class _ExperienceItem extends StatelessWidget {
  final HomeExperiencesItemResponseModel item;

  const _ExperienceItem({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.only(
        top: 24,
        right: 100,
        left: 100,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: context.isDarkMode
                ? Colors.grey.shade800
                : Colors.grey.shade200,
          ),
        ],
        shape: BoxShape.rectangle,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _logoLayout(),
          _titleDescriptionLayout(context),
          _dateLayout(),
        ],
      ),
    );
  }

  Widget _logoLayout() {
    return Expanded(
      flex: 2,
      child: Align(
        alignment: Alignment.topLeft,
        child: ImageLoader(
          item.logo,
          height: 68,
        ),
      ),
    );
  }

  Widget _titleDescriptionLayout(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style: context.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          GapConstant.h16,
          Text(
            item.description,
            style: context.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _dateLayout() {
    var outputFormat = 'MMM yyyy';

    return Expanded(
      flex: 3,
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          '${item.startDate.formatDate(outputFormat: outputFormat)} - ${item.endDate?.formatDate(outputFormat: outputFormat) ?? 'Present'}',
        ),
      ),
    );
  }
}
