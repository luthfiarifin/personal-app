import 'package:json_annotation/json_annotation.dart';

import 'home_experiences_item_response_model.dart';

part 'home_experiences_response_model.g.dart';

@JsonSerializable()
class HomeExperiencesResponseModel {
  HomeExperiencesResponseModel({
    required this.text,
    required this.items,
  });

  final String text;
  final List<HomeExperiencesItemResponseModel> items;

  factory HomeExperiencesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeExperiencesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeExperiencesResponseModelToJson(this);
}
