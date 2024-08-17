part of 'cleaning_bloc.dart';

class CleaningState extends Equatable {
  final List<ServicePersonDataBase> savedServices;

  final int selectedIndex;

  const CleaningState({
    this.selectedIndex = 0,
    this.savedServices = const [],
  });

  CleaningState copyWith({
    List<ServicePersonDataBase>? savedServices,
    int? selectedIndex,
    List<Service>? serviceList,
    List<ServicePerson>? filteredItems,
  }) {
    return CleaningState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      savedServices: savedServices ?? this.savedServices,
    );
  }

  @override
  List<Object> get props => [selectedIndex, savedServices];
}
