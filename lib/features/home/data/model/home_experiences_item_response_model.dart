import 'package:json_annotation/json_annotation.dart';

part 'home_experiences_item_response_model.g.dart';

@JsonSerializable()
class HomeExperiencesItemResponseModel {
  HomeExperiencesItemResponseModel({
    required this.title,
    required this.logo,
    required this.description,
    required this.startDate,
    required this.endDate,
  });

  final String title, logo, description, startDate;
  final String? endDate;

  factory HomeExperiencesItemResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$HomeExperiencesItemResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$HomeExperiencesItemResponseModelToJson(this);
}
