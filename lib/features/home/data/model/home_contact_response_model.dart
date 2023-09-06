import 'package:json_annotation/json_annotation.dart';

import 'home_contact_others_response_model.dart';

part 'home_contact_response_model.g.dart';

@JsonSerializable()
class HomeContactResponseModel {
  HomeContactResponseModel({
    required this.text,
    required this.email,
    required this.others,
  });

  final String text, email;
  final HomeContactOthersResponseModel others;

  factory HomeContactResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeContactResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeContactResponseModelToJson(this);
}
