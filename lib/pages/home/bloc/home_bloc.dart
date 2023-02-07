import 'package:bloc/bloc.dart';
import 'package:kongdoc/models/home_model.dart';
import 'package:kongdoc/repositories/home_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enums/data_status.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc({
    required HomeRepository homeRepository,
  })
      : _homeRepository = homeRepository,
        super(HomeState.initial()) {
    on<Started>((event, emit) async {
      await _getHomeData(emit);
    });

    on<Refresh>((event, emit) async {
      if (state.status.isRefreshing) return;

      emit(state.copyWith(status: DataStatus.refreshing));
      await Future.delayed(const Duration(seconds: 1));
      await _getHomeData(emit);
    });
  }

  Future<void> _getHomeData(Emitter<HomeState> emit) async {
    final result = await _homeRepository.getHomeData(userId: 'hjim');
print('==================== result : ${result} ');
    // if (result.success) {
    //   emit(state.copyWith(
    //     status: DataStatus.success,
    //   ));
    // } else {
    //   emit(state.copyWith(
    //     msg: result.msg,
    //     status: DataStatus.error,
    //   ));
    // }
  }
}