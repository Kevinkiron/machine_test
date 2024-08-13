part of 'home_bloc.dart';

class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class StartBannerSlider extends HomeEvent {}

class UpdateBannerIndex extends HomeEvent {
  final int index;

  const UpdateBannerIndex(this.index);

  @override
  List<Object> get props => [index];
}
