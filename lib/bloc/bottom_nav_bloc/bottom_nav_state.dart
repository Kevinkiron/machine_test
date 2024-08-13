part of 'bottom_nav_bloc.dart';

class BottomNavState extends Equatable {
  final List<Widget> pages;
  final int selectedIndex;
  const BottomNavState({
    this.selectedIndex = 0,
    this.pages = const <Widget>[
      HomeView(),
      SavedView(),
      ProfileView(),
    ],
  });
  BottomNavState copyWith({
    List<Widget>? pages,
    int? selectedIndex,
  }) {
    return BottomNavState(
        pages: pages ?? this.pages,
        selectedIndex: selectedIndex ?? this.selectedIndex);
  }

  @override
  List<Object> get props => [pages, selectedIndex];
}
