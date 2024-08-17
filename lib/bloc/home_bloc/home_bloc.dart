import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:swift_service/data/models/banner_model.dart/banner_model.dart';
import 'package:swift_service/data/models/structure_categorey_model.dart/structure_all_categories.dart';
import 'package:swift_service/data/models/top_rated_model/top_rated_model.dart';
import 'package:swift_service/data/repository/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetBannerRepository getBannerRepository;
  HomeBloc({required this.getBannerRepository}) : super(const HomeState()) {
    on<StartBannerSlider>(_onStartBannerSlider);
    on<GetCategory>(_getCategory);
    on<GetTopRated>(_getTopRated);
  }

  Future<void> _onStartBannerSlider(
      StartBannerSlider event, Emitter<HomeState> emit) async {
    emit(state.copyWith(load: true));
    add(GetCategory());
    add(GetTopRated());
    print('--------------------11111111');
    final response = await getBannerRepository.bannerGet();

    response.fold(
      (failure) {
        emit(state.copyWith(status: Status.failure, load: false));
        log(failure.toString(), name: 'fail');
      },
      (result) {
        emit(state.copyWith(
            bannerList: result, status: Status.success, load: false));
        log(state.bannerList.toString());
      },
    );
  }

  // Future<void> _getCategory(GetCategory event, Emitter<HomeState> emit) async {
  //   emit(state.copyWith(status: Status.loading));
  //   final response = await getBannerRepository.getCategory();

  //   response.fold(
  //     (failure) {
  //       emit(state.copyWith(status: Status.failure));
  //       log(failure.toString(), name: 'fail');
  //     },
  //     (result) {
  //       emit(state.copyWith(categoryList: result, status: Status.success));
  //       log(state.categoryList.toString());
  //     },
  //   );
  // }
  Future<void> _getCategory(GetCategory event, Emitter<HomeState> emit) async {
    emit(state.copyWith(load: true));

    final response = await getBannerRepository.getAllCategory();

    response.fold(
      (failure) {
        emit(state.copyWith(status: Status.failure, load: false));
        log(failure.toString(), name: 'fail');
      },
      (result) {
        emit(state.copyWith(
            categoryList: result, status: Status.success, load: false));
        log(state.categoryList.toString());
      },
    );
  }

  Future<void> _getTopRated(GetTopRated event, Emitter<HomeState> emit) async {
    emit(state.copyWith(load: true));

    final response = await getBannerRepository.getTopRated();

    response.fold(
      (failure) {
        emit(state.copyWith(status: Status.failure, load: false));
        log(failure.toString(), name: 'fail');
      },
      (result) {
        emit(state.copyWith(
            topRatedList: result, status: Status.success, load: false));
        log(state.topRatedList.toString());
      },
    );
  }
}
