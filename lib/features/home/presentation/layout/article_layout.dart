import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:personal_app/core/presentation/constant/gap_constant.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';
import 'package:personal_app/core/presentation/util/launch_util.dart';
import 'package:personal_app/core/presentation/widget/image_loader.dart';
import 'package:personal_app/features/home/data/model/home_article_item_response_model.dart';
import 'package:personal_app/features/home/data/model/home_article_response_model.dart';
import 'package:personal_app/features/home/presentation/widget/chip_widget.dart';
import 'package:personal_app/features/home/presentation/widget/home_background.dart';

class ArticleLayout extends StatelessWidget {
  final HomeArticleResponseModel article;

  const ArticleLayout({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      isGrey: true,
      child: Column(
        children: [
          const ChipWidget(
            text: 'Featured Post',
          ),
          GapConstant.h24,
          Text(
            article.text,
            style: context.bodyLarge,
            textAlign: TextAlign.center,
          ),
          GapConstant.h16,
          _listArticle(),
        ],
      ),
    );
  }

  Widget _listArticle() {
    var items = article.items;

    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 24,
      spacing: 24,
      children: [
        ...items.mapIndexed((i, e) {
          return _ArticleItem(
            item: e,
          );
        }).toList(),
        _ArticleItemMore(
          other: article.other,
        ),
      ],
    );
  }
}

const double _itemWidth = 280;
const double _itemHeight = 450;

abstract class _BaseArticleItem extends StatelessWidget {
  const _BaseArticleItem();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: _itemWidth,
        minHeight: _itemHeight,
        maxHeight: _itemHeight,
      ),
      child: Container(
        decoration: context.radiusBorderDecoration,
        child: child(context),
      ),
    );
  }

  Widget child(BuildContext context);
}

class _ArticleItem extends _BaseArticleItem {
  final HomeArticleItemResponseModel item;

  const _ArticleItem({
    required this.item,
  });

  @override
  Widget child(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: ImageLoader(
            item.image,
            fit: BoxFit.fitHeight,
            height: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: context.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              GapConstant.h16,
              Container(
                color: Colors.grey.shade600,
                width: 64,
                height: 2,
              ),
              GapConstant.h16,
              Text(
                item.description ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              GapConstant.h24,
              _iconButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _iconButton() {
    return IconButton(
      onPressed: () {
        LaunchUtil.launchWeb(item.link);
      },
      icon: const Icon(Icons.open_in_new),
    );
  }
}

class _ArticleItemMore extends _BaseArticleItem {
  final HomeArticleItemResponseModel other;

  const _ArticleItemMore({
    required this.other,
  });

  @override
  Widget child(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: ImageLoader(
            other.image,
            width: _itemWidth,
            height: _itemHeight,
            fit: BoxFit.cover,
            color: Colors.white.withOpacity(.3),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                other.description ?? '',
                style: context.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade900,
                  shadows: const [
                    Shadow(
                      blurRadius: 2,
                      color: Colors.white,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              GapConstant.h16,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(130, 56),
                ),
                onPressed: _onButtonClicked,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(other.title),
                    GapConstant.w4,
                    const Icon(
                      Icons.arrow_right,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _onButtonClicked() {
    LaunchUtil.launchWeb(other.link);
  }
}
