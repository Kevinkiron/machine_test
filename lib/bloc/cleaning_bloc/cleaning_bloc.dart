import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/hive_db/service_model.dart';
import '../../data/models/structure_categorey_model.dart/structure_all_categories.dart';

part 'cleaning_event.dart';
part 'cleaning_state.dart';

class CleaningBloc extends Bloc<CleaningEvent, CleaningState> {
  CleaningBloc() : super(const CleaningState()) {
    on<ChangeCategoryEvent>(_onCategoryChanged);
    on<AddBookmarkEvent>(_onAddBookmark);
    on<FetchSaved>(_onLoadBookmarks);
    on<RemoveBookmarkEvent>(_onRemoveBookmark);
  }

  void _onCategoryChanged(
      ChangeCategoryEvent event, Emitter<CleaningState> emit) {
    int selectedIndex = event.index;

    emit(state.copyWith(
      selectedIndex: selectedIndex,
    ));
  }

  Future<void> _onAddBookmark(
      AddBookmarkEvent event, Emitter<CleaningState> emit) async {
    var bookmarksBox = Hive.box('dataBase');
    final servicePerson = ServicePersonDataBase(
      id: event.servicePerson.id.toString(),
      name: event.servicePerson.name ?? '',
      profilePicture: event.servicePerson.profilePicture ?? '',
    );
    if (bookmarksBox.containsKey(servicePerson.id)) {
    } else {
      await bookmarksBox.put(servicePerson.id, servicePerson);
    }

    log('Service person ${servicePerson.name} bookmarked.');
    add(const FetchSaved());
  }

  Future<void> _onLoadBookmarks(
      FetchSaved event, Emitter<CleaningState> emit) async {
    var bookmarksBox = Hive.box('dataBase');

    final savedServices = bookmarksBox.values.toList();

    final typedServices =
        savedServices.whereType<ServicePersonDataBase>().toList();

    emit(state.copyWith(savedServices: typedServices));
  }

  Future<void> _onRemoveBookmark(
      RemoveBookmarkEvent event, Emitter<CleaningState> emit) async {
    var bookmarksBox = Hive.box('dataBase');

    if (bookmarksBox.containsKey(event.servicePersonId)) {
      await bookmarksBox.delete(event.servicePersonId);
      log('Service person with id ${event.servicePersonId} removed from bookmarks.');
    }

    add(const FetchSaved());
  }
}
