// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_about_me_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeAboutMeResponseModel _$HomeAboutMeResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeAboutMeResponseModel(
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$HomeAboutMeResponseModelToJson(
        HomeAboutMeResponseModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
    };
