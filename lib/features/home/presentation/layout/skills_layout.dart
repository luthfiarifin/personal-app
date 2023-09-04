import 'package:flutter/widgets.dart';
import 'package:personal_app/core/presentation/constant/gap_constant.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';
import 'package:personal_app/features/home/data/model/home_skills_item_response_model.dart';
import 'package:personal_app/features/home/data/model/home_skills_response_model.dart';
import 'package:personal_app/features/home/presentation/widget/chip_widget.dart';
import 'package:personal_app/features/home/presentation/widget/home_background.dart';

class SkillsLayout extends StatelessWidget {
  final HomeSkillsResponseModel skills;

  const SkillsLayout({
    super.key,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: Column(
        children: [
          const ChipWidget(
            text: 'Skills',
          ),
          GapConstant.h24,
          Text(
            skills.text,
            style: context.bodyLarge,
          ),
          GapConstant.h48,
          _listSkills()
        ],
      ),
    );
  }

  Widget _listSkills() {
    var items = skills.items;

    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 16,
      spacing: 64,
      children: items
          .map(
            (e) => _SkillsItem(
              item: e,
            ),
          )
          .toList(),
    );
  }
}

class _SkillsItem extends StatelessWidget {
  final HomeSkillsItemResponseModel item;

  const _SkillsItem({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          item.image,
          width: 84,
          height: 84,
        ),
        GapConstant.h16,
        Text(
          item.text,
          style: context.bodyMedium,
        ),
      ],
    );
  }
}
