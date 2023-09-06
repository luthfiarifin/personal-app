import 'package:json_annotation/json_annotation.dart';

import 'home_projects_item_response_model.dart';

part 'home_projects_response_model.g.dart';

@JsonSerializable()
class HomeProjectsResponseModel {
  HomeProjectsResponseModel({
    required this.text,
    required this.items,
  });

  final String text;
  final List<HomeProjectsItemResponseModel> items;

  factory HomeProjectsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeProjectsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeProjectsResponseModelToJson(this);
}
