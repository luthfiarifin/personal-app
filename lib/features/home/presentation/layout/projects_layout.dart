import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';
import 'package:personal_app/core/presentation/util/launch_util.dart';
import 'package:personal_app/features/home/data/model/home_projects_item_response_model.dart';
import 'package:personal_app/features/home/data/model/home_projects_response_model.dart';

import '../../../../core/presentation/constant/gap_constant.dart';
import '../widget/chip_widget.dart';
import '../widget/home_background.dart';

class ProjectsLayout extends StatelessWidget {
  final HomeProjectsResponseModel projects;

  const ProjectsLayout({
    super.key,
    required this.projects,
  });

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: Column(
        children: [
          const ChipWidget(
            text: 'Projects',
          ),
          GapConstant.h24,
          Text(
            projects.text,
            style: context.bodyLarge,
          ),
          GapConstant.h48,
          _listProjects(),
        ],
      ),
    );
  }

  Widget _listProjects() {
    return Column(
      children: projects.items
          .mapIndexed(
            (i, e) => _ProjectItem(
              item: e,
              isEven: i % 2 == 0,
            ),
          )
          .toList(),
    );
  }
}

class _ProjectItem extends StatelessWidget {
  final HomeProjectsItemResponseModel item;
  final bool isEven;

  const _ProjectItem({
    required this.item,
    required this.isEven,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: context.shadowColor,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: isEven
            ? [
                _image(context),
                _text(context),
              ]
            : [
                _text(context),
                _image(context),
              ],
      ),
    );
  }

  Widget _image(BuildContext context) {
    const radius = Radius.circular(12);
    const radiusZero = Radius.zero;

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: isEven ? radius : radiusZero,
            bottomLeft: isEven ? radius : radiusZero,
            topRight: !isEven ? radius : radiusZero,
            bottomRight: !isEven ? radius : radiusZero,
          ),
          color: Theme.of(context).colorScheme.onInverseSurface,
        ),
        padding: const EdgeInsets.all(48),
        child: Image.network(
          item.image,
          height: 400,
        ),
      ),
    );
  }

  Widget _text(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              style: context.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            GapConstant.h24,
            Text(
              item.description,
              style: context.bodyMedium,
            ),
            GapConstant.h32,
            _technologies(),
            GapConstant.h56,
            _openIcon(),
          ],
        ),
      ),
    );
  }

  Widget _technologies() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: item.technologies
          .map(
            (e) => ChipWidget(text: e),
          )
          .toList(),
    );
  }

  Widget _openIcon() {
    return IconButton(
      onPressed: () {
        LaunchUtil.launchWeb(item.link);
      },
      icon: const Icon(Icons.open_in_new),
    );
  }
}
