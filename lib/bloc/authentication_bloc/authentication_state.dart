part of 'authentication_bloc.dart';

enum Status { initial, success, failure }

class AuthenticationState extends Equatable {
  final Status status;
  final String otpLocal;
  final bool load;
  const AuthenticationState(
      {this.status = Status.initial, this.otpLocal = '', this.load = false});

  AuthenticationState copyWith({
    Status? status,
    String? otpLocal,
    bool? load,
  }) {
    return AuthenticationState(
        status: status ?? this.status,
        otpLocal: otpLocal ?? this.otpLocal,
        load: load ?? this.load);
  }

  @override
  List<Object> get props => [
        status,
        otpLocal,
        load,
      ];
}
