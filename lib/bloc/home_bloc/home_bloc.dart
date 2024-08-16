import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:swift_service/data/models/banner_model.dart/banner_model.dart';
import 'package:swift_service/data/models/category_model/category_model.dart';
import 'package:swift_service/data/repository/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetBannerRepository getBannerRepository;
  HomeBloc({required this.getBannerRepository}) : super(const HomeState()) {
    on<StartBannerSlider>(_onStartBannerSlider);
    on<GetCategory>(_getCategory);
  }

  void _onStartBannerSlider(
      StartBannerSlider event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));
    add(GetCategory());
    print('--------------------11111111');
    final response = await getBannerRepository.bannerGet();

    response.fold(
      (failure) {
        emit(state.copyWith(status: Status.failure));
        log(failure.toString(), name: 'fail');
      },
      (result) {
        emit(state.copyWith(bannerList: result, status: Status.success));
        log(state.bannerList.toString());
      },
    );
  }

  void _getCategory(GetCategory event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final response = await getBannerRepository.getCategory();

    response.fold(
      (failure) {
        emit(state.copyWith(status: Status.failure));
        log(failure.toString(), name: 'fail');
      },
      (result) {
        emit(state.copyWith(categoryList: result, status: Status.success));
        log(state.categoryList.toString());
      },
    );
  }
}
