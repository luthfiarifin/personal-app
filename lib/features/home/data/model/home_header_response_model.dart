import 'package:json_annotation/json_annotation.dart';

import 'home_social_media_response_model.dart';

part 'home_header_response_model.g.dart';

@JsonSerializable()
class HomeHeaderResponseModel {
  HomeHeaderResponseModel({
    required this.title,
    required this.description,
    required this.location,
    required this.image,
    required this.isAvailableForProject,
    required this.linkedin,
    required this.contacts,
  });

  final String title, description, location, image;
  final bool isAvailableForProject;
  final HomeSocialMediaResponseModel linkedin;
  final List<HomeSocialMediaResponseModel> contacts;

  factory HomeHeaderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeHeaderResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeHeaderResponseModelToJson(this);
}
