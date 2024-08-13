import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  Timer? _timer;

  HomeBloc() : super(const HomeState()) {
    on<StartBannerSlider>(_onStartBannerSlider);
    on<UpdateBannerIndex>(_onUpdateBannerIndex);
  }

  void _onStartBannerSlider(StartBannerSlider event, Emitter<HomeState> emit) {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      int nextIndex = state.currentIndex < 2 ? state.currentIndex + 1 : 0;
      add(UpdateBannerIndex(nextIndex));
    });
  }

  void _onUpdateBannerIndex(UpdateBannerIndex event, Emitter<HomeState> emit) {
    emit(state.copyWith(currentIndex: event.index));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
