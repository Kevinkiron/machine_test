part of 'cleaning_bloc.dart';

class CleaningState extends Equatable {
  final int selectedIndex;
  final List<CleaningModel> filteredItems;
  final List<String> category;

  const CleaningState(
      {this.selectedIndex = 0,
      this.filteredItems = const [],
      this.category = const <String>[
        'All',
        'House',
        'Vehicles',
        'Appliances'
      ]});

  CleaningState copyWith({
    int? selectedIndex,
    List<CleaningModel>? filteredItems,
  }) {
    return CleaningState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      filteredItems: filteredItems ?? this.filteredItems,
    );
  }

  @override
  List<Object> get props => [selectedIndex, filteredItems];
}
