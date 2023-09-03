import 'package:json_annotation/json_annotation.dart';

part 'home_projects_item_response_model.g.dart';

@JsonSerializable()
class HomeProjectsItemResponseModel {
  HomeProjectsItemResponseModel({
    required this.name,
    required this.image,
    required this.description,
    required this.link,
    required this.technologies,
  });

  final String name, image, description, link;
  final List<String> technologies;

  factory HomeProjectsItemResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$HomeProjectsItemResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$HomeProjectsItemResponseModelToJson(this);
}
