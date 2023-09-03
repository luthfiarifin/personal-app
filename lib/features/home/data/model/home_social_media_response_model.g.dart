// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_social_media_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeSocialMediaResponseModel _$HomeSocialMediaResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeSocialMediaResponseModel(
      type: json['type'] as String?,
      text: json['text'] as String?,
      link: json['link'] as String,
    );

Map<String, dynamic> _$HomeSocialMediaResponseModelToJson(
        HomeSocialMediaResponseModel instance) =>
    <String, dynamic>{
      'link': instance.link,
      'text': instance.text,
      'type': instance.type,
    };
