// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      title: json['title'] as String,
      author: json['author'] as String,
      text: json['text'] as String,
      starsCount: (json['starsCount'] as num).toDouble(),
      reviewsCount: (json['reviewsCount'] as num).toInt(),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'text': instance.text,
      'starsCount': instance.starsCount,
      'reviewsCount': instance.reviewsCount,
    };
