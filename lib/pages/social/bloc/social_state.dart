part of 'social_bloc.dart';

@freezed
class SocialState with _$SocialState {
  const SocialState._();

  const factory SocialState(
      {required List<SocialItem> listItems,
      required SocialItem? selectedItem,
      required int page,
      required DataStatus status,
      required bool isLastPage,
      required String msg,
      required List<AssetPathEntity> albums,
      AssetPathEntity? selectedAlbum,
      required List<AssetEntity> selectedAlbumPhotos}) = _SocialState;

  factory SocialState.initial() {
    return const SocialState(
        page: 1,
        listItems: [],
        status: DataStatus.initial,
        isLastPage: false,
        msg: '',
        selectedItem: null,
        albums: [],
        selectedAlbum: null,
        selectedAlbumPhotos: []);
  }

  bool get hasListData => listItems.isNotEmpty;

  bool get hasSelectedItem => selectedItem != null;

  bool get isProcessing =>
      status.isDeleting || status.isUpdating || status.isSubmitting;
}
