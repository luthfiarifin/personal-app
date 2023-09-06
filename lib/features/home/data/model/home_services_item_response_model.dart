import 'package:json_annotation/json_annotation.dart';

part 'home_services_item_response_model.g.dart';

@JsonSerializable()
class HomeServicesItemResponseModel {
  HomeServicesItemResponseModel({
    required this.title,
    required this.icon,
    required this.description,
  });

  final String title, icon, description;

  factory HomeServicesItemResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeServicesItemResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesItemResponseModelToJson(this);
}
