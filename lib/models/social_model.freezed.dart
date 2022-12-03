// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialItem _$SocialItemFromJson(Map<String, dynamic> json) {
  return _SocialItem.fromJson(json);
}

/// @nodoc
mixin _$SocialItem {
  @JsonKey(name: "post_id")
  String get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "post_date")
  String? get postDate => throw _privateConstructorUsedError;
  String? get contents => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String? get userName => throw _privateConstructorUsedError;
  dynamic? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "is_like")
  int? get isLike => throw _privateConstructorUsedError;
  @JsonKey(name: "like_count")
  int? get likeCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialItemCopyWith<SocialItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialItemCopyWith<$Res> {
  factory $SocialItemCopyWith(
          SocialItem value, $Res Function(SocialItem) then) =
      _$SocialItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "post_id") String postId,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "post_date") String? postDate,
      String? contents,
      @JsonKey(name: "user_name") String? userName,
      dynamic? images,
      @JsonKey(name: "is_like") int? isLike,
      @JsonKey(name: "like_count") int? likeCount});
}

/// @nodoc
class _$SocialItemCopyWithImpl<$Res> implements $SocialItemCopyWith<$Res> {
  _$SocialItemCopyWithImpl(this._value, this._then);

  final SocialItem _value;
  // ignore: unused_field
  final $Res Function(SocialItem) _then;

  @override
  $Res call({
    Object? postId = freezed,
    Object? userId = freezed,
    Object? postDate = freezed,
    Object? contents = freezed,
    Object? userName = freezed,
    Object? images = freezed,
    Object? isLike = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: postDate == freezed
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_SocialItemCopyWith<$Res>
    implements $SocialItemCopyWith<$Res> {
  factory _$$_SocialItemCopyWith(
          _$_SocialItem value, $Res Function(_$_SocialItem) then) =
      __$$_SocialItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "post_id") String postId,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "post_date") String? postDate,
      String? contents,
      @JsonKey(name: "user_name") String? userName,
      dynamic? images,
      @JsonKey(name: "is_like") int? isLike,
      @JsonKey(name: "like_count") int? likeCount});
}

/// @nodoc
class __$$_SocialItemCopyWithImpl<$Res> extends _$SocialItemCopyWithImpl<$Res>
    implements _$$_SocialItemCopyWith<$Res> {
  __$$_SocialItemCopyWithImpl(
      _$_SocialItem _value, $Res Function(_$_SocialItem) _then)
      : super(_value, (v) => _then(v as _$_SocialItem));

  @override
  _$_SocialItem get _value => super._value as _$_SocialItem;

  @override
  $Res call({
    Object? postId = freezed,
    Object? userId = freezed,
    Object? postDate = freezed,
    Object? contents = freezed,
    Object? userName = freezed,
    Object? images = freezed,
    Object? isLike = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_$_SocialItem(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: postDate == freezed
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialItem implements _SocialItem {
  _$_SocialItem(
      {@JsonKey(name: "post_id") required this.postId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "post_date") this.postDate,
      required this.contents,
      @JsonKey(name: "user_name") this.userName,
      this.images,
      @JsonKey(name: "is_like") this.isLike,
      @JsonKey(name: "like_count") this.likeCount});

  factory _$_SocialItem.fromJson(Map<String, dynamic> json) =>
      _$$_SocialItemFromJson(json);

  @override
  @JsonKey(name: "post_id")
  final String postId;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "post_date")
  final String? postDate;
  @override
  final String? contents;
  @override
  @JsonKey(name: "user_name")
  final String? userName;
  @override
  final dynamic? images;
  @override
  @JsonKey(name: "is_like")
  final int? isLike;
  @override
  @JsonKey(name: "like_count")
  final int? likeCount;

  @override
  String toString() {
    return 'SocialItem(postId: $postId, userId: $userId, postDate: $postDate, contents: $contents, userName: $userName, images: $images, isLike: $isLike, likeCount: $likeCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialItem &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.postDate, postDate) &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.isLike, isLike) &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(postDate),
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(isLike),
      const DeepCollectionEquality().hash(likeCount));

  @JsonKey(ignore: true)
  @override
  _$$_SocialItemCopyWith<_$_SocialItem> get copyWith =>
      __$$_SocialItemCopyWithImpl<_$_SocialItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialItemToJson(
      this,
    );
  }
}

abstract class _SocialItem implements SocialItem {
  factory _SocialItem(
      {@JsonKey(name: "post_id") required final String postId,
      @JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: "post_date") final String? postDate,
      required final String? contents,
      @JsonKey(name: "user_name") final String? userName,
      final dynamic? images,
      @JsonKey(name: "is_like") final int? isLike,
      @JsonKey(name: "like_count") final int? likeCount}) = _$_SocialItem;

  factory _SocialItem.fromJson(Map<String, dynamic> json) =
      _$_SocialItem.fromJson;

  @override
  @JsonKey(name: "post_id")
  String get postId;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "post_date")
  String? get postDate;
  @override
  String? get contents;
  @override
  @JsonKey(name: "user_name")
  String? get userName;
  @override
  dynamic? get images;
  @override
  @JsonKey(name: "is_like")
  int? get isLike;
  @override
  @JsonKey(name: "like_count")
  int? get likeCount;
  @override
  @JsonKey(ignore: true)
  _$$_SocialItemCopyWith<_$_SocialItem> get copyWith =>
      throw _privateConstructorUsedError;
}
