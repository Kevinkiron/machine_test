part of 'splash_bloc.dart';

enum Status { initial, login, onboard, home }

class SplashState extends Equatable {
  final Status status;
  const SplashState({this.status = Status.initial});
  SplashState copyWith({
    Status? status,
  }) {
    return SplashState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}
