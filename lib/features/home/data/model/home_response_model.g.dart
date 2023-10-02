// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponseModel _$HomeResponseModelFromJson(Map<String, dynamic> json) =>
    HomeResponseModel(
      header: HomeHeaderResponseModel.fromJson(
          json['header'] as Map<String, dynamic>),
      aboutMe: HomeAboutMeResponseModel.fromJson(
          json['aboutMe'] as Map<String, dynamic>),
      skills: HomeSkillsResponseModel.fromJson(
          json['skills'] as Map<String, dynamic>),
      experiences: HomeExperiencesResponseModel.fromJson(
          json['experiences'] as Map<String, dynamic>),
      projects: HomeProjectsResponseModel.fromJson(
          json['projects'] as Map<String, dynamic>),
      contact: HomeContactResponseModel.fromJson(
          json['contact'] as Map<String, dynamic>),
      services: HomeServicesResponseModel.fromJson(
          json['services'] as Map<String, dynamic>),
      article: HomeArticleResponseModel.fromJson(
          json['article'] as Map<String, dynamic>),
      bottom: HomeBottomResponseModel.fromJson(
          json['bottom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeResponseModelToJson(HomeResponseModel instance) =>
    <String, dynamic>{
      'header': instance.header,
      'aboutMe': instance.aboutMe,
      'skills': instance.skills,
      'experiences': instance.experiences,
      'projects': instance.projects,
      'contact': instance.contact,
      'services': instance.services,
      'article': instance.article,
      'bottom': instance.bottom,
    };
