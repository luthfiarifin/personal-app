import 'package:json_annotation/json_annotation.dart';

import 'home_about_me_response_model.dart';
import 'home_article_response_model.dart';
import 'home_bottom_response_model.dart';
import 'home_contact_response_model.dart';
import 'home_experiences_response_model.dart';
import 'home_header_response_model.dart';
import 'home_projects_response_model.dart';
import 'home_services_response_model.dart';
import 'home_skills_response_model.dart';

part 'home_response_model.g.dart';

@JsonSerializable()
class HomeResponseModel {
  HomeResponseModel({
    required this.header,
    required this.aboutMe,
    required this.skills,
    required this.experiences,
    required this.projects,
    required this.contact,
    required this.services,
    required this.article,
    required this.bottom,
  });

  final HomeHeaderResponseModel header;
  final HomeAboutMeResponseModel aboutMe;
  final HomeSkillsResponseModel skills;
  final HomeExperiencesResponseModel experiences;
  final HomeProjectsResponseModel projects;
  final HomeContactResponseModel contact;
  final HomeServicesResponseModel services;
  final HomeArticleResponseModel article;
  final HomeBottomResponseModel bottom;

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeResponseModelToJson(this);
}
