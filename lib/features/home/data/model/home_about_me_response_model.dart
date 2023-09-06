import 'package:json_annotation/json_annotation.dart';

part 'home_about_me_response_model.g.dart';

@JsonSerializable()
class HomeAboutMeResponseModel {
  HomeAboutMeResponseModel({
    required this.title,
    required this.description,
    required this.image,
  });

  final String title, description, image;

  factory HomeAboutMeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeAboutMeResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeAboutMeResponseModelToJson(this);
}
