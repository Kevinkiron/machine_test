import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:swift_service/src/home_view/home_view.dart';
import 'package:swift_service/src/profile_view/profile_view.dart';
import 'package:swift_service/src/saved_view/saved_view.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavState()) {
    on<SelectBottomBar>(_selectBottomNav);
  }
  _selectBottomNav(SelectBottomBar event, Emitter<BottomNavState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }
}
