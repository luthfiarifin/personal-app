import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:personal_app/core/presentation/constant/gap_constant.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';
import 'package:personal_app/features/home/data/model/home_services_item_response_model.dart';
import 'package:personal_app/features/home/data/model/home_services_response_model.dart';

import '../widget/chip_widget.dart';
import '../widget/home_background.dart';

class ServicesLayout extends StatelessWidget {
  final HomeServicesResponseModel services;

  const ServicesLayout({
    super.key,
    required this.services,
  });

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: Column(
        children: [
          const ChipWidget(
            text: 'Services',
          ),
          GapConstant.h24,
          Text(
            services.text,
            style: context.bodyLarge,
          ),
          GapConstant.h32,
          _listServies(),
        ],
      ),
    );
  }

  Widget _listServies() {
    var items = services.items;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.mapIndexed((i, e) {
        return Padding(
          padding: EdgeInsets.only(
            right: i != (items.length - 1) ? 24 : 0,
          ),
          child: _ServicesItem(
            item: e,
          ),
        );
      }).toList(),
    );
  }
}

class _ServicesItem extends StatelessWidget {
  final HomeServicesItemResponseModel item;

  const _ServicesItem({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.onInverseSurface,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: context.shadowColor
          ),
        ],
      ),
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            item.icon,
            width: 32,
            height: 32,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          GapConstant.h96,
          Text(
            item.title,
            style: context.titleLarge,
          ),
          GapConstant.h16,
          Container(
            color: Colors.grey.shade600,
            width: 64,
            height: 2,
          ),
          GapConstant.h16,
          Text(
            item.description,
          ),
        ],
      ),
    );
  }
}
