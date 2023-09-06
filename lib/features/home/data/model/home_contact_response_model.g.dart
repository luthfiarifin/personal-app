// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_contact_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeContactResponseModel _$HomeContactResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeContactResponseModel(
      text: json['text'] as String,
      email: json['email'] as String,
      others: HomeContactOthersResponseModel.fromJson(
          json['others'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeContactResponseModelToJson(
        HomeContactResponseModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'email': instance.email,
      'others': instance.others,
    };
