import 'package:json_annotation/json_annotation.dart';

import 'home_article_item_response_model.dart';

part 'home_article_response_model.g.dart';

@JsonSerializable()
class HomeArticleResponseModel {
  HomeArticleResponseModel({
    required this.text,
    required this.other,
    required this.items,
  });

  final String text;
  final List<HomeArticleItemResponseModel> items;
  final HomeArticleItemResponseModel other;

  factory HomeArticleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeArticleResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeArticleResponseModelToJson(this);
}
