// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  @JsonKey(name: "post_user_id")
  String? get postUserId => throw _privateConstructorUsedError;
  @JsonKey(name: "post_date")
  String? get postDate => throw _privateConstructorUsedError;
  String? get contents => throw _privateConstructorUsedError;
  @JsonKey(name: "post_user_name")
  String? get postUserName => throw _privateConstructorUsedError;
  dynamic? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "is_like")
  int? get isLike => throw _privateConstructorUsedError;
  @JsonKey(name: "like_count")
  int? get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: "comment_count")
  int? get commentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialItemCopyWith<SocialItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialItemCopyWith<$Res> {
  factory $SocialItemCopyWith(
          SocialItem value, $Res Function(SocialItem) then) =
      _$SocialItemCopyWithImpl<$Res, SocialItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "post_id") String postId,
      @JsonKey(name: "post_user_id") String? postUserId,
      @JsonKey(name: "post_date") String? postDate,
      String? contents,
      @JsonKey(name: "post_user_name") String? postUserName,
      dynamic? images,
      @JsonKey(name: "is_like") int? isLike,
      @JsonKey(name: "like_count") int? likeCount,
      @JsonKey(name: "comment_count") int? commentCount});
}

/// @nodoc
class _$SocialItemCopyWithImpl<$Res, $Val extends SocialItem>
    implements $SocialItemCopyWith<$Res> {
  _$SocialItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? postUserId = freezed,
    Object? postDate = freezed,
    Object? contents = freezed,
    Object? postUserName = freezed,
    Object? images = freezed,
    Object? isLike = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      postUserId: freezed == postUserId
          ? _value.postUserId
          : postUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String?,
      postUserName: freezed == postUserName
          ? _value.postUserName
          : postUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      isLike: freezed == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocialItemCopyWith<$Res>
    implements $SocialItemCopyWith<$Res> {
  factory _$$_SocialItemCopyWith(
          _$_SocialItem value, $Res Function(_$_SocialItem) then) =
      __$$_SocialItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "post_id") String postId,
      @JsonKey(name: "post_user_id") String? postUserId,
      @JsonKey(name: "post_date") String? postDate,
      String? contents,
      @JsonKey(name: "post_user_name") String? postUserName,
      dynamic? images,
      @JsonKey(name: "is_like") int? isLike,
      @JsonKey(name: "like_count") int? likeCount,
      @JsonKey(name: "comment_count") int? commentCount});
}

/// @nodoc
class __$$_SocialItemCopyWithImpl<$Res>
    extends _$SocialItemCopyWithImpl<$Res, _$_SocialItem>
    implements _$$_SocialItemCopyWith<$Res> {
  __$$_SocialItemCopyWithImpl(
      _$_SocialItem _value, $Res Function(_$_SocialItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? postUserId = freezed,
    Object? postDate = freezed,
    Object? contents = freezed,
    Object? postUserName = freezed,
    Object? images = freezed,
    Object? isLike = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_$_SocialItem(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      postUserId: freezed == postUserId
          ? _value.postUserId
          : postUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String?,
      postUserName: freezed == postUserName
          ? _value.postUserName
          : postUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      isLike: freezed == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialItem implements _SocialItem {
  _$_SocialItem(
      {@JsonKey(name: "post_id") required this.postId,
      @JsonKey(name: "post_user_id") this.postUserId,
      @JsonKey(name: "post_date") this.postDate,
      required this.contents,
      @JsonKey(name: "post_user_name") this.postUserName,
      this.images,
      @JsonKey(name: "is_like") this.isLike,
      @JsonKey(name: "like_count") this.likeCount,
      @JsonKey(name: "comment_count") this.commentCount});

  factory _$_SocialItem.fromJson(Map<String, dynamic> json) =>
      _$$_SocialItemFromJson(json);

  @override
  @JsonKey(name: "post_id")
  final String postId;
  @override
  @JsonKey(name: "post_user_id")
  final String? postUserId;
  @override
  @JsonKey(name: "post_date")
  final String? postDate;
  @override
  final String? contents;
  @override
  @JsonKey(name: "post_user_name")
  final String? postUserName;
  @override
  final dynamic? images;
  @override
  @JsonKey(name: "is_like")
  final int? isLike;
  @override
  @JsonKey(name: "like_count")
  final int? likeCount;
  @override
  @JsonKey(name: "comment_count")
  final int? commentCount;

  @override
  String toString() {
    return 'SocialItem(postId: $postId, postUserId: $postUserId, postDate: $postDate, contents: $contents, postUserName: $postUserName, images: $images, isLike: $isLike, likeCount: $likeCount, commentCount: $commentCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialItem &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.postUserId, postUserId) ||
                other.postUserId == postUserId) &&
            (identical(other.postDate, postDate) ||
                other.postDate == postDate) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.postUserName, postUserName) ||
                other.postUserName == postUserName) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      postUserId,
      postDate,
      contents,
      postUserName,
      const DeepCollectionEquality().hash(images),
      isLike,
      likeCount,
      commentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      @JsonKey(name: "post_user_id") final String? postUserId,
      @JsonKey(name: "post_date") final String? postDate,
      required final String? contents,
      @JsonKey(name: "post_user_name") final String? postUserName,
      final dynamic? images,
      @JsonKey(name: "is_like") final int? isLike,
      @JsonKey(name: "like_count") final int? likeCount,
      @JsonKey(name: "comment_count") final int? commentCount}) = _$_SocialItem;

  factory _SocialItem.fromJson(Map<String, dynamic> json) =
      _$_SocialItem.fromJson;

  @override
  @JsonKey(name: "post_id")
  String get postId;
  @override
  @JsonKey(name: "post_user_id")
  String? get postUserId;
  @override
  @JsonKey(name: "post_date")
  String? get postDate;
  @override
  String? get contents;
  @override
  @JsonKey(name: "post_user_name")
  String? get postUserName;
  @override
  dynamic? get images;
  @override
  @JsonKey(name: "is_like")
  int? get isLike;
  @override
  @JsonKey(name: "like_count")
  int? get likeCount;
  @override
  @JsonKey(name: "comment_count")
  int? get commentCount;
  @override
  @JsonKey(ignore: true)
  _$$_SocialItemCopyWith<_$_SocialItem> get copyWith =>
      throw _privateConstructorUsedError;
}
