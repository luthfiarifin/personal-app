import 'package:json_annotation/json_annotation.dart';

import 'home_social_media_response_model.dart';

part 'home_contact_others_response_model.g.dart';

@JsonSerializable()
class HomeContactOthersResponseModel {
  HomeContactOthersResponseModel({
    required this.text,
    required this.items,
  });

  final String text;
  final List<HomeSocialMediaResponseModel> items;

  factory HomeContactOthersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeContactOthersResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeContactOthersResponseModelToJson(this);
}
