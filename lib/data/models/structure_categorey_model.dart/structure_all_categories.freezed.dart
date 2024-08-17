// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'structure_all_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StructureAllCategories _$StructureAllCategoriesFromJson(
    Map<String, dynamic> json) {
  return _StructureAllCategories.fromJson(json);
}

/// @nodoc
mixin _$StructureAllCategories {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "top_rated")
  bool? get topRated => throw _privateConstructorUsedError;
  @JsonKey(name: "all_service_people_count")
  int? get allServicePeopleCount => throw _privateConstructorUsedError;
  @JsonKey(name: "all_service_people")
  List<ServicePerson>? get allServicePeople =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "services")
  List<Service>? get services => throw _privateConstructorUsedError;

  /// Serializes this StructureAllCategories to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StructureAllCategories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StructureAllCategoriesCopyWith<StructureAllCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureAllCategoriesCopyWith<$Res> {
  factory $StructureAllCategoriesCopyWith(StructureAllCategories value,
          $Res Function(StructureAllCategories) then) =
      _$StructureAllCategoriesCopyWithImpl<$Res, StructureAllCategories>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "created") DateTime? created,
      @JsonKey(name: "top_rated") bool? topRated,
      @JsonKey(name: "all_service_people_count") int? allServicePeopleCount,
      @JsonKey(name: "all_service_people")
      List<ServicePerson>? allServicePeople,
      @JsonKey(name: "services") List<Service>? services});
}

/// @nodoc
class _$StructureAllCategoriesCopyWithImpl<$Res,
        $Val extends StructureAllCategories>
    implements $StructureAllCategoriesCopyWith<$Res> {
  _$StructureAllCategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StructureAllCategories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? created = freezed,
    Object? topRated = freezed,
    Object? allServicePeopleCount = freezed,
    Object? allServicePeople = freezed,
    Object? services = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      allServicePeopleCount: freezed == allServicePeopleCount
          ? _value.allServicePeopleCount
          : allServicePeopleCount // ignore: cast_nullable_to_non_nullable
              as int?,
      allServicePeople: freezed == allServicePeople
          ? _value.allServicePeople
          : allServicePeople // ignore: cast_nullable_to_non_nullable
              as List<ServicePerson>?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureAllCategoriesImplCopyWith<$Res>
    implements $StructureAllCategoriesCopyWith<$Res> {
  factory _$$StructureAllCategoriesImplCopyWith(
          _$StructureAllCategoriesImpl value,
          $Res Function(_$StructureAllCategoriesImpl) then) =
      __$$StructureAllCategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "created") DateTime? created,
      @JsonKey(name: "top_rated") bool? topRated,
      @JsonKey(name: "all_service_people_count") int? allServicePeopleCount,
      @JsonKey(name: "all_service_people")
      List<ServicePerson>? allServicePeople,
      @JsonKey(name: "services") List<Service>? services});
}

/// @nodoc
class __$$StructureAllCategoriesImplCopyWithImpl<$Res>
    extends _$StructureAllCategoriesCopyWithImpl<$Res,
        _$StructureAllCategoriesImpl>
    implements _$$StructureAllCategoriesImplCopyWith<$Res> {
  __$$StructureAllCategoriesImplCopyWithImpl(
      _$StructureAllCategoriesImpl _value,
      $Res Function(_$StructureAllCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of StructureAllCategories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? created = freezed,
    Object? topRated = freezed,
    Object? allServicePeopleCount = freezed,
    Object? allServicePeople = freezed,
    Object? services = freezed,
  }) {
    return _then(_$StructureAllCategoriesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      allServicePeopleCount: freezed == allServicePeopleCount
          ? _value.allServicePeopleCount
          : allServicePeopleCount // ignore: cast_nullable_to_non_nullable
              as int?,
      allServicePeople: freezed == allServicePeople
          ? _value._allServicePeople
          : allServicePeople // ignore: cast_nullable_to_non_nullable
              as List<ServicePerson>?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureAllCategoriesImpl implements _StructureAllCategories {
  const _$StructureAllCategoriesImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "top_rated") this.topRated,
      @JsonKey(name: "all_service_people_count") this.allServicePeopleCount,
      @JsonKey(name: "all_service_people")
      final List<ServicePerson>? allServicePeople,
      @JsonKey(name: "services") final List<Service>? services})
      : _allServicePeople = allServicePeople,
        _services = services;

  factory _$StructureAllCategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureAllCategoriesImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
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
  @JsonKey(name: "all_service_people_count")
  final int? allServicePeopleCount;
  final List<ServicePerson>? _allServicePeople;
  @override
  @JsonKey(name: "all_service_people")
  List<ServicePerson>? get allServicePeople {
    final value = _allServicePeople;
    if (value == null) return null;
    if (_allServicePeople is EqualUnmodifiableListView)
      return _allServicePeople;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Service>? _services;
  @override
  @JsonKey(name: "services")
  List<Service>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StructureAllCategories(id: $id, name: $name, image: $image, created: $created, topRated: $topRated, allServicePeopleCount: $allServicePeopleCount, allServicePeople: $allServicePeople, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureAllCategoriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.topRated, topRated) ||
                other.topRated == topRated) &&
            (identical(other.allServicePeopleCount, allServicePeopleCount) ||
                other.allServicePeopleCount == allServicePeopleCount) &&
            const DeepCollectionEquality()
                .equals(other._allServicePeople, _allServicePeople) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      created,
      topRated,
      allServicePeopleCount,
      const DeepCollectionEquality().hash(_allServicePeople),
      const DeepCollectionEquality().hash(_services));

  /// Create a copy of StructureAllCategories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureAllCategoriesImplCopyWith<_$StructureAllCategoriesImpl>
      get copyWith => __$$StructureAllCategoriesImplCopyWithImpl<
          _$StructureAllCategoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureAllCategoriesImplToJson(
      this,
    );
  }
}

abstract class _StructureAllCategories implements StructureAllCategories {
  const factory _StructureAllCategories(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "image") final String? image,
          @JsonKey(name: "created") final DateTime? created,
          @JsonKey(name: "top_rated") final bool? topRated,
          @JsonKey(name: "all_service_people_count")
          final int? allServicePeopleCount,
          @JsonKey(name: "all_service_people")
          final List<ServicePerson>? allServicePeople,
          @JsonKey(name: "services") final List<Service>? services}) =
      _$StructureAllCategoriesImpl;

  factory _StructureAllCategories.fromJson(Map<String, dynamic> json) =
      _$StructureAllCategoriesImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
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
  @JsonKey(name: "all_service_people_count")
  int? get allServicePeopleCount;
  @override
  @JsonKey(name: "all_service_people")
  List<ServicePerson>? get allServicePeople;
  @override
  @JsonKey(name: "services")
  List<Service>? get services;

  /// Create a copy of StructureAllCategories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StructureAllCategoriesImplCopyWith<_$StructureAllCategoriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServicePerson _$ServicePersonFromJson(Map<String, dynamic> json) {
  return _ServicePerson.fromJson(json);
}

/// @nodoc
mixin _$ServicePerson {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_picture")
  String? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime? get created => throw _privateConstructorUsedError;

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
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "profile_picture") String? profilePicture,
      @JsonKey(name: "created") DateTime? created});
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
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "profile_picture") String? profilePicture,
      @JsonKey(name: "created") DateTime? created});
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
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? created = freezed,
  }) {
    return _then(_$ServicePersonImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServicePersonImpl implements _ServicePerson {
  const _$ServicePersonImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "profile_picture") this.profilePicture,
      @JsonKey(name: "created") this.created});

  factory _$ServicePersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicePersonImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
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
  String toString() {
    return 'ServicePerson(id: $id, name: $name, profilePicture: $profilePicture, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicePersonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, profilePicture, created);

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
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "profile_picture") final String? profilePicture,
      @JsonKey(name: "created") final DateTime? created}) = _$ServicePersonImpl;

  factory _ServicePerson.fromJson(Map<String, dynamic> json) =
      _$ServicePersonImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "profile_picture")
  String? get profilePicture;
  @override
  @JsonKey(name: "created")
  DateTime? get created;

  /// Create a copy of ServicePerson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicePersonImplCopyWith<_$ServicePersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "top_rated")
  bool? get topRated => throw _privateConstructorUsedError;
  @JsonKey(name: "service_people")
  List<ServicePerson>? get servicePeople => throw _privateConstructorUsedError;

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "created") DateTime? created,
      @JsonKey(name: "top_rated") bool? topRated,
      @JsonKey(name: "service_people") List<ServicePerson>? servicePeople});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? created = freezed,
    Object? topRated = freezed,
    Object? servicePeople = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      servicePeople: freezed == servicePeople
          ? _value.servicePeople
          : servicePeople // ignore: cast_nullable_to_non_nullable
              as List<ServicePerson>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "created") DateTime? created,
      @JsonKey(name: "top_rated") bool? topRated,
      @JsonKey(name: "service_people") List<ServicePerson>? servicePeople});
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$ServiceImpl>
    implements _$$ServiceImplCopyWith<$Res> {
  __$$ServiceImplCopyWithImpl(
      _$ServiceImpl _value, $Res Function(_$ServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? created = freezed,
    Object? topRated = freezed,
    Object? servicePeople = freezed,
  }) {
    return _then(_$ServiceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      servicePeople: freezed == servicePeople
          ? _value._servicePeople
          : servicePeople // ignore: cast_nullable_to_non_nullable
              as List<ServicePerson>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceImpl implements _Service {
  const _$ServiceImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "top_rated") this.topRated,
      @JsonKey(name: "service_people")
      final List<ServicePerson>? servicePeople})
      : _servicePeople = servicePeople;

  factory _$ServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
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
  String toString() {
    return 'Service(id: $id, name: $name, image: $image, created: $created, topRated: $topRated, servicePeople: $servicePeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.topRated, topRated) ||
                other.topRated == topRated) &&
            const DeepCollectionEquality()
                .equals(other._servicePeople, _servicePeople));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, created,
      topRated, const DeepCollectionEquality().hash(_servicePeople));

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      __$$ServiceImplCopyWithImpl<_$ServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceImplToJson(
      this,
    );
  }
}

abstract class _Service implements Service {
  const factory _Service(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "created") final DateTime? created,
      @JsonKey(name: "top_rated") final bool? topRated,
      @JsonKey(name: "service_people")
      final List<ServicePerson>? servicePeople}) = _$ServiceImpl;

  factory _Service.fromJson(Map<String, dynamic> json) = _$ServiceImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
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
  @JsonKey(name: "service_people")
  List<ServicePerson>? get servicePeople;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
