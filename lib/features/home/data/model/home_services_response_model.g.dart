// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_services_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeServicesResponseModel _$HomeServicesResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeServicesResponseModel(
      text: json['text'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              HomeServicesItemResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeServicesResponseModelToJson(
        HomeServicesResponseModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'items': instance.items,
    };
