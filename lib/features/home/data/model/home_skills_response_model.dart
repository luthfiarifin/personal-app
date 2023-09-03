import 'package:json_annotation/json_annotation.dart';

import 'home_skills_item_response_model.dart';

part 'home_skills_response_model.g.dart';

@JsonSerializable()
class HomeSkillsResponseModel {
  HomeSkillsResponseModel({
    required this.text,
    required this.items,
  });

  final String text;
  final List<HomeSkillsItemResponseModel> items;

  factory HomeSkillsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeSkillsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeSkillsResponseModelToJson(this);
}
