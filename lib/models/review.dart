
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review{
  const factory Review({
    required String title,
    required String author,
    required String text,
    required double starsCount,
    required int reviewsCount,
  }) = _Review;

  factory Review.fromJson(Map<String, Object?> json) => _$ReviewFromJson(json);
}