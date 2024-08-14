import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:swift_service/data/models/cleaning_model.dart';

part 'cleaning_event.dart';
part 'cleaning_state.dart';

class CleaningBloc extends Bloc<CleaningEvent, CleaningState> {
  List<CleaningModel> allItems = [
    CleaningModel(
      image: 'assets/images/Image.png',
      name: 'John',
      rating: '4.5 (14)',
      saved: true,
      category: Category.house,
    ),
    CleaningModel(
      image: 'assets/images/Image.png',
      name: 'Jacob',
      rating: '4.7 (1)',
      saved: false,
      category: Category.vehicles,
    ),
    CleaningModel(
      image: 'assets/images/Image.png',
      name: 'Edison',
      rating: '4.3 (5)',
      saved: true,
      category: Category.house,
    ),
    CleaningModel(
      image: 'assets/images/Image.png',
      name: 'Joseph',
      rating: '4.6 (14)',
      saved: false,
      category: Category.appliances,
    ),
    CleaningModel(
      image: 'assets/images/Image.png',
      name: 'Rikhil',
      rating: '4.8 (14)',
      saved: true,
      category: Category.house,
    ),
    CleaningModel(
      image: 'assets/images/Image.png',
      name: 'Roy',
      rating: '4.4 (1)',
      saved: false,
      category: Category.vehicles,
    ),
  ];
  CleaningBloc() : super(const CleaningState()) {
    on<ChangeCategoryEvent>(_onCategoryChanged);
    add(const ChangeCategoryEvent(0));
  }

  void _onCategoryChanged(
      ChangeCategoryEvent event, Emitter<CleaningState> emit) {
    int selectedIndex = event.index;

    List<CleaningModel> filteredItems;
    switch (selectedIndex) {
      case 1:
        filteredItems =
            allItems.where((item) => item.category == Category.house).toList();
        break;
      case 2:
        filteredItems = allItems
            .where((item) => item.category == Category.vehicles)
            .toList();
        break;
      case 3:
        filteredItems = allItems
            .where((item) => item.category == Category.appliances)
            .toList();
        break;
      default:
        filteredItems = allItems;
    }

    emit(state.copyWith(
        selectedIndex: selectedIndex, filteredItems: filteredItems));
  }
}
