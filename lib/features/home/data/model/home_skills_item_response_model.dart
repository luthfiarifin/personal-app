import 'package:json_annotation/json_annotation.dart';

part 'home_skills_item_response_model.g.dart';

@JsonSerializable()
class HomeSkillsItemResponseModel {
  HomeSkillsItemResponseModel({
    required this.text,
    required this.image,
  });

  final String text, image;

  factory HomeSkillsItemResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeSkillsItemResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeSkillsItemResponseModelToJson(this);
}
