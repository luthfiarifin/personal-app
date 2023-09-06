import 'package:json_annotation/json_annotation.dart';

part 'home_social_media_response_model.g.dart';

@JsonSerializable()
class HomeSocialMediaResponseModel {
  HomeSocialMediaResponseModel({
    required this.type,
    required this.text,
    required this.link,
    required this.icon,
  });

  final String link;
  final String? text, type, icon;

  factory HomeSocialMediaResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeSocialMediaResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeSocialMediaResponseModelToJson(this);
}
