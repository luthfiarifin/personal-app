// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_skills_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeSkillsResponseModel _$HomeSkillsResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeSkillsResponseModel(
      text: json['text'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              HomeSkillsItemResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeSkillsResponseModelToJson(
        HomeSkillsResponseModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'items': instance.items,
    };
