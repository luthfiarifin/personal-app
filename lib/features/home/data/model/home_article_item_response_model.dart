import 'package:json_annotation/json_annotation.dart';

part 'home_article_item_response_model.g.dart';

@JsonSerializable()
class HomeArticleItemResponseModel {
  HomeArticleItemResponseModel({
    required this.title,
    required this.description,
    required this.image,
    required this.link,
  });

  final String title, image, link;
  final String? description;

  factory HomeArticleItemResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeArticleItemResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeArticleItemResponseModelToJson(this);
}
