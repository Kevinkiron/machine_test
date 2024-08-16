part of 'authentication_bloc.dart';

class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class NumberInput extends AuthenticationEvent {
  final String number;
  final BuildContext context;
  const NumberInput({required this.number, required this.context});

  @override
  List<Object> get props => [number, context];
}

class SigUpEvent extends AuthenticationEvent {
  final String number;
  final String name;
  final String lastName;
  final String email;
  final BuildContext context;
  const SigUpEvent({
    required this.number,
    required this.context,
    required this.name,
    required this.lastName,
    required this.email,
  });

  @override
  List<Object> get props => [number, context, email, name, lastName];
}
