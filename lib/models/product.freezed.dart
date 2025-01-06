// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get name => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get fullDescription => throw _privateConstructorUsedError;
  dynamic get inStock => throw _privateConstructorUsedError;
  int get countInStock => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String name,
      String company,
      String shortDescription,
      String fullDescription,
      dynamic inStock,
      int countInStock,
      double price});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? company = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
    Object? inStock = freezed,
    Object? countInStock = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
      inStock: freezed == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as dynamic,
      countInStock: null == countInStock
          ? _value.countInStock
          : countInStock // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String company,
      String shortDescription,
      String fullDescription,
      dynamic inStock,
      int countInStock,
      double price});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? company = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
    Object? inStock = freezed,
    Object? countInStock = null,
    Object? price = null,
  }) {
    return _then(_$ProductImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
      inStock: freezed == inStock ? _value.inStock! : inStock,
      countInStock: null == countInStock
          ? _value.countInStock
          : countInStock // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl with DiagnosticableTreeMixin implements _Product {
  const _$ProductImpl(
      {required this.name,
      required this.company,
      required this.shortDescription,
      required this.fullDescription,
      this.inStock = true,
      required this.countInStock,
      required this.price});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String name;
  @override
  final String company;
  @override
  final String shortDescription;
  @override
  final String fullDescription;
  @override
  @JsonKey()
  final dynamic inStock;
  @override
  final int countInStock;
  @override
  final double price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product(name: $name, company: $company, shortDescription: $shortDescription, fullDescription: $fullDescription, inStock: $inStock, countInStock: $countInStock, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('shortDescription', shortDescription))
      ..add(DiagnosticsProperty('fullDescription', fullDescription))
      ..add(DiagnosticsProperty('inStock', inStock))
      ..add(DiagnosticsProperty('countInStock', countInStock))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.fullDescription, fullDescription) ||
                other.fullDescription == fullDescription) &&
            const DeepCollectionEquality().equals(other.inStock, inStock) &&
            (identical(other.countInStock, countInStock) ||
                other.countInStock == countInStock) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      company,
      shortDescription,
      fullDescription,
      const DeepCollectionEquality().hash(inStock),
      countInStock,
      price);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String name,
      required final String company,
      required final String shortDescription,
      required final String fullDescription,
      final dynamic inStock,
      required final int countInStock,
      required final double price}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get name;
  @override
  String get company;
  @override
  String get shortDescription;
  @override
  String get fullDescription;
  @override
  dynamic get inStock;
  @override
  int get countInStock;
  @override
  double get price;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
