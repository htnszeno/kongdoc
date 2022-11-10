import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/repositories/social_repository.dart';

part 'social_event.dart';
part 'social_state.dart';
part 'social_bloc.freezed.dart';

class SocialBloc extends Bloc<SocialEvent, SocialState> {
  final SocialRepository _socialRepository;
  SocialBloc({
    required SocialRepository socialRepository,
  })  : _socialRepository = socialRepository,
        super(SocialState.initial()) {
    on<SocialEvent>((event, emit) {});
    on<Started>((event, emit) async {
      await _getFirstPage(emit);
      // print("start...");
      // _socialRepository.getMany(currentPage: 2);
      // _socialRepository.getInit();
    });
  }

  Future<void> _getFirstPage(Emitter<SocialState> emit) async {
    print('_getFirstPage...');
    final result = await _socialRepository.getMany(currentPage: 1);
    print('result === ${result}');
    // if (result.success) {
    //   emit(state.copyWith(
    //     items: result.data ?? [],
    //     status: DataStatus.initial,
    //     isLastPage: false,
    //     page: 1,
    //   ));
    // } else {
    //   emit(state.copyWith(
    //     message: result.message,
    //     status: DataStatus.error,
    //     isLastPage: false,
    //     page: 1,
    //   ));
    // }
  }
}
