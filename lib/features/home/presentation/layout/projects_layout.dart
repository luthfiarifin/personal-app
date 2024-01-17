import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';
import 'package:personal_app/core/presentation/extensions/responsive_extension.dart';
import 'package:personal_app/core/presentation/util/launch_util.dart';
import 'package:personal_app/features/home/data/model/home_projects_item_response_model.dart';
import 'package:personal_app/features/home/data/model/home_projects_response_model.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/presentation/constant/gap_constant.dart';
import '../../../../core/presentation/widget/image_loader.dart';
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
            textAlign: TextAlign.center,
          ),
          GapConstant.h16,
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
    var isRow = context.isDisplayLargeThanTablet;

    return Container(
      margin: const EdgeInsets.only(top: 32),
      decoration: context.radiusBorderDecoration,
      child: ResponsiveRowColumn(
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        layout: isRow
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowOrder: isEven ? 1 : 2,
            child: _image(context, !isRow),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowOrder: !isEven ? 1 : 2,
            child: _text(context),
          ),
        ],
      ),
    );
  }

  Widget _image(BuildContext context, bool isColumn) {
    const radius = Radius.circular(12);
    const radiusZero = Radius.zero;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: isColumn
              ? radius
              : isEven
                  ? radius
                  : radiusZero,
          bottomLeft: isColumn
              ? radiusZero
              : isEven
                  ? radius
                  : radiusZero,
          topRight: isColumn
              ? radius
              : !isEven
                  ? radius
                  : radiusZero,
          bottomRight: isColumn
              ? radiusZero
              : !isEven
                  ? radius
                  : radiusZero,
        ),
        color: context.colorScheme.onInverseSurface,
      ),
      padding: const EdgeInsets.all(32),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: !isColumn ? 400 : 340,
          minWidth: context.screenWidth,
        ),
        child: ImageLoader(
          item.image,
          height: context.isDisplayLargeThanTablet ? null : 200,
        ),
      ),
    );
  }

  Widget _text(BuildContext context) {
    return Padding(
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
            textScaleFactor: context.titleScaleFactor,
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
