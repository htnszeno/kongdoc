// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentItem _$CommentItemFromJson(Map<String, dynamic> json) {
  return _CommentItem.fromJson(json);
}

/// @nodoc
mixin _$CommentItem {
  @JsonKey(name: "post_id")
  String get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "comment_id")
  String get commentId => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_comment_id")
  String get parentCommentId => throw _privateConstructorUsedError;
  @JsonKey(name: "comment_user_id")
  String? get commentUserId => throw _privateConstructorUsedError;
  @JsonKey(name: "comment_user_name")
  String? get commentUserName => throw _privateConstructorUsedError;
  @JsonKey(name: "comment_date")
  DateTime? get commentDate => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentItemCopyWith<CommentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentItemCopyWith<$Res> {
  factory $CommentItemCopyWith(
          CommentItem value, $Res Function(CommentItem) then) =
      _$CommentItemCopyWithImpl<$Res, CommentItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "post_id") String postId,
      @JsonKey(name: "comment_id") String commentId,
      @JsonKey(name: "parent_comment_id") String parentCommentId,
      @JsonKey(name: "comment_user_id") String? commentUserId,
      @JsonKey(name: "comment_user_name") String? commentUserName,
      @JsonKey(name: "comment_date") DateTime? commentDate,
      String? comment,
      int? level});
}

/// @nodoc
class _$CommentItemCopyWithImpl<$Res, $Val extends CommentItem>
    implements $CommentItemCopyWith<$Res> {
  _$CommentItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? commentId = null,
    Object? parentCommentId = null,
    Object? commentUserId = freezed,
    Object? commentUserName = freezed,
    Object? commentDate = freezed,
    Object? comment = freezed,
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      parentCommentId: null == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as String,
      commentUserId: freezed == commentUserId
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentUserName: freezed == commentUserName
          ? _value.commentUserName
          : commentUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      commentDate: freezed == commentDate
          ? _value.commentDate
          : commentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentItemCopyWith<$Res>
    implements $CommentItemCopyWith<$Res> {
  factory _$$_CommentItemCopyWith(
          _$_CommentItem value, $Res Function(_$_CommentItem) then) =
      __$$_CommentItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "post_id") String postId,
      @JsonKey(name: "comment_id") String commentId,
      @JsonKey(name: "parent_comment_id") String parentCommentId,
      @JsonKey(name: "comment_user_id") String? commentUserId,
      @JsonKey(name: "comment_user_name") String? commentUserName,
      @JsonKey(name: "comment_date") DateTime? commentDate,
      String? comment,
      int? level});
}

/// @nodoc
class __$$_CommentItemCopyWithImpl<$Res>
    extends _$CommentItemCopyWithImpl<$Res, _$_CommentItem>
    implements _$$_CommentItemCopyWith<$Res> {
  __$$_CommentItemCopyWithImpl(
      _$_CommentItem _value, $Res Function(_$_CommentItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? commentId = null,
    Object? parentCommentId = null,
    Object? commentUserId = freezed,
    Object? commentUserName = freezed,
    Object? commentDate = freezed,
    Object? comment = freezed,
    Object? level = freezed,
  }) {
    return _then(_$_CommentItem(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      parentCommentId: null == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as String,
      commentUserId: freezed == commentUserId
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentUserName: freezed == commentUserName
          ? _value.commentUserName
          : commentUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      commentDate: freezed == commentDate
          ? _value.commentDate
          : commentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentItem implements _CommentItem {
  _$_CommentItem(
      {@JsonKey(name: "post_id") required this.postId,
      @JsonKey(name: "comment_id") required this.commentId,
      @JsonKey(name: "parent_comment_id") required this.parentCommentId,
      @JsonKey(name: "comment_user_id") this.commentUserId,
      @JsonKey(name: "comment_user_name") this.commentUserName,
      @JsonKey(name: "comment_date") this.commentDate,
      required this.comment,
      this.level});

  factory _$_CommentItem.fromJson(Map<String, dynamic> json) =>
      _$$_CommentItemFromJson(json);

  @override
  @JsonKey(name: "post_id")
  final String postId;
  @override
  @JsonKey(name: "comment_id")
  final String commentId;
  @override
  @JsonKey(name: "parent_comment_id")
  final String parentCommentId;
  @override
  @JsonKey(name: "comment_user_id")
  final String? commentUserId;
  @override
  @JsonKey(name: "comment_user_name")
  final String? commentUserName;
  @override
  @JsonKey(name: "comment_date")
  final DateTime? commentDate;
  @override
  final String? comment;
  @override
  final int? level;

  @override
  String toString() {
    return 'CommentItem(postId: $postId, commentId: $commentId, parentCommentId: $parentCommentId, commentUserId: $commentUserId, commentUserName: $commentUserName, commentDate: $commentDate, comment: $comment, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentItem &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.parentCommentId, parentCommentId) ||
                other.parentCommentId == parentCommentId) &&
            (identical(other.commentUserId, commentUserId) ||
                other.commentUserId == commentUserId) &&
            (identical(other.commentUserName, commentUserName) ||
                other.commentUserName == commentUserName) &&
            (identical(other.commentDate, commentDate) ||
                other.commentDate == commentDate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      commentId,
      parentCommentId,
      commentUserId,
      commentUserName,
      commentDate,
      comment,
      level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentItemCopyWith<_$_CommentItem> get copyWith =>
      __$$_CommentItemCopyWithImpl<_$_CommentItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentItemToJson(
      this,
    );
  }
}

abstract class _CommentItem implements CommentItem {
  factory _CommentItem(
      {@JsonKey(name: "post_id") required final String postId,
      @JsonKey(name: "comment_id") required final String commentId,
      @JsonKey(name: "parent_comment_id") required final String parentCommentId,
      @JsonKey(name: "comment_user_id") final String? commentUserId,
      @JsonKey(name: "comment_user_name") final String? commentUserName,
      @JsonKey(name: "comment_date") final DateTime? commentDate,
      required final String? comment,
      final int? level}) = _$_CommentItem;

  factory _CommentItem.fromJson(Map<String, dynamic> json) =
      _$_CommentItem.fromJson;

  @override
  @JsonKey(name: "post_id")
  String get postId;
  @override
  @JsonKey(name: "comment_id")
  String get commentId;
  @override
  @JsonKey(name: "parent_comment_id")
  String get parentCommentId;
  @override
  @JsonKey(name: "comment_user_id")
  String? get commentUserId;
  @override
  @JsonKey(name: "comment_user_name")
  String? get commentUserName;
  @override
  @JsonKey(name: "comment_date")
  DateTime? get commentDate;
  @override
  String? get comment;
  @override
  int? get level;
  @override
  @JsonKey(ignore: true)
  _$$_CommentItemCopyWith<_$_CommentItem> get copyWith =>
      throw _privateConstructorUsedError;
}
