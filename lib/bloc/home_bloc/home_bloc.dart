import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<StartBannerSlider>(_onStartBannerSlider);
  }

  void _onStartBannerSlider(StartBannerSlider event, Emitter<HomeState> emit) {}
}
