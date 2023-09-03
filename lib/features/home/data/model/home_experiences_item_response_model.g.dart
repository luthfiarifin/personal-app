// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_experiences_item_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeExperiencesItemResponseModel _$HomeExperiencesItemResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeExperiencesItemResponseModel(
      title: json['title'] as String,
      logo: json['logo'] as String,
      description: json['description'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String?,
    );

Map<String, dynamic> _$HomeExperiencesItemResponseModelToJson(
        HomeExperiencesItemResponseModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'logo': instance.logo,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
