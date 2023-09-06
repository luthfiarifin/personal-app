// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_projects_item_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeProjectsItemResponseModel _$HomeProjectsItemResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeProjectsItemResponseModel(
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
      technologies: (json['technologies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$HomeProjectsItemResponseModelToJson(
        HomeProjectsItemResponseModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'link': instance.link,
      'technologies': instance.technologies,
    };
