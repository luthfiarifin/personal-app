import 'package:json_annotation/json_annotation.dart';

import 'home_services_item_response_model.dart';

part 'home_services_response_model.g.dart';

@JsonSerializable()
class HomeServicesResponseModel {
  HomeServicesResponseModel({
    required this.text,
    required this.items,
  });

  final String text;
  final List<HomeServicesItemResponseModel> items;

  factory HomeServicesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeServicesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesResponseModelToJson(this);
}
