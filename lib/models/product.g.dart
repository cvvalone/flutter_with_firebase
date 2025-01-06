// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      name: json['name'] as String,
      company: json['company'] as String,
      shortDescription: json['shortDescription'] as String,
      fullDescription: json['fullDescription'] as String,
      inStock: json['inStock'] ?? true,
      countInStock: (json['countInStock'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'company': instance.company,
      'shortDescription': instance.shortDescription,
      'fullDescription': instance.fullDescription,
      'inStock': instance.inStock,
      'countInStock': instance.countInStock,
      'price': instance.price,
    };
