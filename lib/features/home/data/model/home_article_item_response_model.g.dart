// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_article_item_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeArticleItemResponseModel _$HomeArticleItemResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeArticleItemResponseModel(
      title: json['title'] as String,
      description: json['description'] as String?,
      image: json['image'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$HomeArticleItemResponseModelToJson(
        HomeArticleItemResponseModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'link': instance.link,
      'description': instance.description,
    };
