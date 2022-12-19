part of 'social_bloc.dart';

@freezed
class SocialState with _$SocialState {
  const SocialState._();

  const factory SocialState({
    required List<SocialItem> listItems,
    required SocialItem? selectedItem,
    required int page,
    required DataStatus status,
    required int returnType,
    required bool isLastPage,
    required String msg,
    required List<AssetPathEntity> albums,
    AssetPathEntity? selectedAlbum,
    required List<AssetEntity> selectedAlbumPhotos,
    required List<SocialItem> likeItems,
    required List<CommentItem> commentItems,
    required CommentItem? selectedCommentItem,
    required String instanceDate,
  }) = _SocialState;

  factory SocialState.initial() {
    return SocialState(
        page: 1,
        listItems: [],
        status: DataStatus.initial,
        returnType: 0,
        isLastPage: false,
        msg: '',
        selectedItem: null,
        albums: [],
        selectedAlbum: null,
        selectedAlbumPhotos: [],
        likeItems: [],
        commentItems: [],
        selectedCommentItem: null,
        instanceDate: DateFormat("yyyy-MM-dd HH:m:s").format(DateTime.now()));
  }

  bool get hasLikeItems => likeItems.isNotEmpty;

  bool get hasListData => listItems.isNotEmpty;

  bool get hasSelectedItem => selectedItem != null;

  bool get hasCommentItems => commentItems.isNotEmpty;

  bool get hasSelectedCommentItem => selectedCommentItem != null;

  bool get isProcessing =>
      status.isDeleting || status.isUpdating || status.isSubmitting;
}
