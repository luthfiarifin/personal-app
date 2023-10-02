// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_article_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeArticleResponseModel _$HomeArticleResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeArticleResponseModel(
      text: json['text'] as String,
      other: HomeArticleItemResponseModel.fromJson(
          json['other'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              HomeArticleItemResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeArticleResponseModelToJson(
        HomeArticleResponseModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'items': instance.items,
      'other': instance.other,
    };
