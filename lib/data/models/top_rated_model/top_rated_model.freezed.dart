// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_rated_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopRatedModel _$TopRatedModelFromJson(Map<String, dynamic> json) {
  return _TopRatedModel.fromJson(json);
}

/// @nodoc
mixin _$TopRatedModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "service_people")
  List<ServicePerson>? get servicePeople => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "top_rated")
  bool? get topRated => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  int? get category => throw _privateConstructorUsedError;

  /// Serializes this TopRatedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopRatedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopRatedModelCopyWith<TopRatedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedModelCopyWith<$Res> {
  factory $TopRatedModelCopyWith(
          TopRatedModel value, $Res Function(TopRatedModel) then) =
      _$TopRatedModelCopyWithImpl<$Res, TopRatedModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "service_people") List<ServicePerson>? servicePeople,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "created") DateTime? created,
      @JsonKey(name: "top_rated") bool? topRated,
      @JsonKey(name: "category") int? category});
}

/// @nodoc
class _$TopRatedModelCopyWithImpl<$Res, $Val extends TopRatedModel>
    implements $TopRatedModelCopyWith<$Res> {
  _$TopRatedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopRatedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? servicePeople = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? created = freezed,
    Object? topRated = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      servicePeople: freezed == servicePeople
          ? _value.servicePeople
          : servicePeople // ignore: cast_nullable_to_non_nullable
              as List<ServicePerson>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      topRated: freezed == topRated
          ? _value.topRated
          : topRated // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopRatedModelImplCopyWith<$Res>
    implements $TopRatedModelCopyWith<$Res> {
  factory _$$TopRatedModelImplCopyWith(
          _$TopRatedModelImpl value, $Res Function(_$TopRatedModelImpl) then) =
      __$$TopRatedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "service_people") List<ServicePerson>? servicePeople,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "created") DateTime? created,
      @JsonKey(name: "top_rated") bool? topRated,
      @JsonKey(name: "category") int? category});
}

/// @nodoc
class __$$TopRatedModelImplCopyWithImpl<$Res>
    extends _$TopRatedModelCopyWithImpl<$Res, _$TopRatedModelImpl>
    implements _$$TopRatedModelImplCopyWith<$Res> {
  __$$TopRatedModelImplCopyWithImpl(
      _$TopRatedModelImpl _value, $Res Function(_$TopRatedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopRatedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? servicePeople = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? created = freezed,
    Object? topRated = freezed,
    Object? category = freezed,
  }) {
    return _then(_$TopRatedModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      servicePeople: freezed == servicePeople
          ? _value._servicePeople
          : servicePeople // ignore: cast_nullable_to_non_nullable
              as List<ServicePerson>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      topRated: freezed == topRated
          ? _value.topRated
          : topRated // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopRatedModelImpl implements _TopRatedModel {
  const _$TopRatedModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "service_people") final List<ServicePerson>? servicePeople,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "top_rated") this.topRated,
      @JsonKey(name: "category") this.category})
      : _servicePeople = servicePeople;

  factory _$TopRatedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopRatedModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  final List<ServicePerson>? _servicePeople;
  @override
  @JsonKey(name: "service_people")
  List<ServicePerson>? get servicePeople {
    final value = _servicePeople;
    if (value == null) return null;
    if (_servicePeople is EqualUnmodifiableListView) return _servicePeople;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "created")
  final DateTime? created;
  @override
  @JsonKey(name: "top_rated")
  final bool? topRated;
  @override
  @JsonKey(name: "category")
  final int? category;

  @override
  String toString() {
    return 'TopRatedModel(id: $id, servicePeople: $servicePeople, name: $name, image: $image, created: $created, topRated: $topRated, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopRatedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._servicePeople, _servicePeople) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.topRated, topRated) ||
                other.topRated == topRated) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_servicePeople),
      name,
      image,
      created,
      topRated,
      category);

  /// Create a copy of TopRatedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopRatedModelImplCopyWith<_$TopRatedModelImpl> get copyWith =>
      __$$TopRatedModelImplCopyWithImpl<_$TopRatedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopRatedModelImplToJson(
      this,
    );
  }
}

abstract class _TopRatedModel implements TopRatedModel {
  const factory _TopRatedModel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "service_people") final List<ServicePerson>? servicePeople,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "created") final DateTime? created,
      @JsonKey(name: "top_rated") final bool? topRated,
      @JsonKey(name: "category") final int? category}) = _$TopRatedModelImpl;

  factory _TopRatedModel.fromJson(Map<String, dynamic> json) =
      _$TopRatedModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "service_people")
  List<ServicePerson>? get servicePeople;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "created")
  DateTime? get created;
  @override
  @JsonKey(name: "top_rated")
  bool? get topRated;
  @override
  @JsonKey(name: "category")
  int? get category;

  /// Create a copy of TopRatedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopRatedModelImplCopyWith<_$TopRatedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServicePerson _$ServicePersonFromJson(Map<String, dynamic> json) {
  return _ServicePerson.fromJson(json);
}

/// @nodoc
mixin _$ServicePerson {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "avg_rating")
  int? get avgRating => throw _privateConstructorUsedError;
  @JsonKey(name: "review_count")
  int? get reviewCount => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_picture")
  String? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "service")
  int? get service => throw _privateConstructorUsedError;

  /// Serializes this ServicePerson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServicePerson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServicePersonCopyWith<ServicePerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicePersonCopyWith<$Res> {
  factory $ServicePersonCopyWith(
          ServicePerson value, $Res Function(ServicePerson) then) =
      _$ServicePersonCopyWithImpl<$Res, ServicePerson>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "avg_rating") int? avgRating,
      @JsonKey(name: "review_count") int? reviewCount,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "profile_picture") String? profilePicture,
      @JsonKey(name: "created") DateTime? created,
      @JsonKey(name: "service") int? service});
}

/// @nodoc
class _$ServicePersonCopyWithImpl<$Res, $Val extends ServicePerson>
    implements $ServicePersonCopyWith<$Res> {
  _$ServicePersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServicePerson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avgRating = freezed,
    Object? reviewCount = freezed,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? created = freezed,
    Object? service = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServicePersonImplCopyWith<$Res>
    implements $ServicePersonCopyWith<$Res> {
  factory _$$ServicePersonImplCopyWith(
          _$ServicePersonImpl value, $Res Function(_$ServicePersonImpl) then) =
      __$$ServicePersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "avg_rating") int? avgRating,
      @JsonKey(name: "review_count") int? reviewCount,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "profile_picture") String? profilePicture,
      @JsonKey(name: "created") DateTime? created,
      @JsonKey(name: "service") int? service});
}

/// @nodoc
class __$$ServicePersonImplCopyWithImpl<$Res>
    extends _$ServicePersonCopyWithImpl<$Res, _$ServicePersonImpl>
    implements _$$ServicePersonImplCopyWith<$Res> {
  __$$ServicePersonImplCopyWithImpl(
      _$ServicePersonImpl _value, $Res Function(_$ServicePersonImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicePerson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avgRating = freezed,
    Object? reviewCount = freezed,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? created = freezed,
    Object? service = freezed,
  }) {
    return _then(_$ServicePersonImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServicePersonImpl implements _ServicePerson {
  const _$ServicePersonImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "avg_rating") this.avgRating,
      @JsonKey(name: "review_count") this.reviewCount,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "profile_picture") this.profilePicture,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "service") this.service});

  factory _$ServicePersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicePersonImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "avg_rating")
  final int? avgRating;
  @override
  @JsonKey(name: "review_count")
  final int? reviewCount;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "profile_picture")
  final String? profilePicture;
  @override
  @JsonKey(name: "created")
  final DateTime? created;
  @override
  @JsonKey(name: "service")
  final int? service;

  @override
  String toString() {
    return 'ServicePerson(id: $id, avgRating: $avgRating, reviewCount: $reviewCount, name: $name, profilePicture: $profilePicture, created: $created, service: $service)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicePersonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.service, service) || other.service == service));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, avgRating, reviewCount, name,
      profilePicture, created, service);

  /// Create a copy of ServicePerson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicePersonImplCopyWith<_$ServicePersonImpl> get copyWith =>
      __$$ServicePersonImplCopyWithImpl<_$ServicePersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicePersonImplToJson(
      this,
    );
  }
}

abstract class _ServicePerson implements ServicePerson {
  const factory _ServicePerson(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "avg_rating") final int? avgRating,
      @JsonKey(name: "review_count") final int? reviewCount,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "profile_picture") final String? profilePicture,
      @JsonKey(name: "created") final DateTime? created,
      @JsonKey(name: "service") final int? service}) = _$ServicePersonImpl;

  factory _ServicePerson.fromJson(Map<String, dynamic> json) =
      _$ServicePersonImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "avg_rating")
  int? get avgRating;
  @override
  @JsonKey(name: "review_count")
  int? get reviewCount;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "profile_picture")
  String? get profilePicture;
  @override
  @JsonKey(name: "created")
  DateTime? get created;
  @override
  @JsonKey(name: "service")
  int? get service;

  /// Create a copy of ServicePerson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicePersonImplCopyWith<_$ServicePersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
