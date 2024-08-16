import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/repository/login_repo.dart';
import '../../utils/common_widgets/snack_bar_custom.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final LoginRepository loginRepository;

  AuthenticationBloc({required this.loginRepository})
      : super(const AuthenticationState()) {
    on<NumberInput>(_phoneNumberInput);
    on<SigUpEvent>(_signUp);
  }
  _phoneNumberInput(
      NumberInput event, Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(load: true));
    final prefs = await SharedPreferences.getInstance();
    final loginResponse = await loginRepository.login(phone: event.number);
    if (event.number.isNotEmpty) {
      emit(state.copyWith());
      loginResponse.fold(
        (failure) {
          emit(state.copyWith(status: Status.failure, load: false));
        },
        (result) {
          log(result.toString(), name: 'res');
          prefs.setString('otp', result.otp.toString());
          if (result.user == true) {
            emit(state.copyWith(
                status: Status.success,
                otpLocal: prefs.getString('otp'),
                load: false));
          } else {
            customErrorSnackBar(
              event.context,
              message: 'User Not registered',
            );
            emit(state.copyWith(load: false));
          }
        },
      );
    } else {
      if (event.context.mounted) {
        customErrorSnackBar(
          event.context,
          message: 'Enter Phone Number',
        );
      }
      emit(state.copyWith(load: false));
    }
  }

  _signUp(SigUpEvent event, Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(load: true));
    final loginResponse = await loginRepository.createNewUser(
      phone: event.number,
      email: event.email,
      lastName: event.lastName,
      name: event.name,
    );
    if (event.number.isNotEmpty &&
        event.email.isNotEmpty &&
        event.lastName.isNotEmpty) {
      emit(state.copyWith());
      loginResponse.fold(
        (failure) {
          emit(state.copyWith(status: Status.failure, load: false));
        },
        (result) {
          log(result.toString(), name: 'res');
          emit(state.copyWith(status: Status.success, load: false));
        },
      );
    } else {
      if (event.context.mounted) {
        customErrorSnackBar(
          event.context,
          message: 'All Fields are required',
        );
        emit(state.copyWith(load: false));
      }
    }
  }
}
