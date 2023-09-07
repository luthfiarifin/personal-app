import 'package:json_annotation/json_annotation.dart';

part 'home_bottom_response_model.g.dart';

@JsonSerializable()
class HomeBottomResponseModel {
  HomeBottomResponseModel({
    required this.text,
  });

  final String text;

  factory HomeBottomResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeBottomResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeBottomResponseModelToJson(this);
}
