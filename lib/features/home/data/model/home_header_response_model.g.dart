// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_header_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeHeaderResponseModel _$HomeHeaderResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeHeaderResponseModel(
      title: json['title'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      image: json['image'] as String,
      isAvailableForProject: json['isAvailableForProject'] as bool,
      linkedin: HomeSocialMediaResponseModel.fromJson(
          json['linkedin'] as Map<String, dynamic>),
      contacts: (json['contacts'] as List<dynamic>)
          .map((e) =>
              HomeSocialMediaResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeHeaderResponseModelToJson(
        HomeHeaderResponseModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'location': instance.location,
      'image': instance.image,
      'isAvailableForProject': instance.isAvailableForProject,
      'linkedin': instance.linkedin,
      'contacts': instance.contacts,
    };
