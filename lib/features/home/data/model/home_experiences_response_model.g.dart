// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_experiences_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeExperiencesResponseModel _$HomeExperiencesResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeExperiencesResponseModel(
      text: json['text'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => HomeExperiencesItemResponseModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeExperiencesResponseModelToJson(
        HomeExperiencesResponseModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'items': instance.items,
    };
