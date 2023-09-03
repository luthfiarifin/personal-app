// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_projects_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeProjectsResponseModel _$HomeProjectsResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeProjectsResponseModel(
      text: json['text'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              HomeProjectsItemResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeProjectsResponseModelToJson(
        HomeProjectsResponseModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'items': instance.items,
    };
