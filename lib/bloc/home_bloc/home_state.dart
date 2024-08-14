part of 'home_bloc.dart';

class HomeState extends Equatable {
  final int currentIndex;
  final List<String> banner;

  const HomeState({
    this.currentIndex = 0,
    this.banner = const<String>[
      'assets/images/banner_1.png',
      'assets/images/banner_2.png',
      'assets/images/banner_3.png',
    ]
  });

  HomeState copyWith({
    int? currentIndex,
  }) {
    return HomeState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }

  @override
  List<Object> get props => [currentIndex];
}
