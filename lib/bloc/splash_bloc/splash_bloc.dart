import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {
    on<NaviagteToApp>(_splashNav);
  }
  _splashNav(NaviagteToApp event, Emitter<SplashState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    final login = prefs.getBool('login') ?? false;
    if (login == true) {
      await Future.delayed(const Duration(seconds: 3), () {
        emit(state.copyWith(status: Status.login));
      });
    } else {
      await Future.delayed(const Duration(seconds: 3), () {
        emit(state.copyWith(status: Status.onboard));
      });
    }
  }
}
