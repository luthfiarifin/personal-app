// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_contact_others_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeContactOthersResponseModel _$HomeContactOthersResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeContactOthersResponseModel(
      text: json['text'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              HomeSocialMediaResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeContactOthersResponseModelToJson(
        HomeContactOthersResponseModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'items': instance.items,
    };
