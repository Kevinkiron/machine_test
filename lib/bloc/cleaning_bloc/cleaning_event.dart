part of 'cleaning_bloc.dart';

class CleaningEvent extends Equatable {
  const CleaningEvent();

  @override
  List<Object> get props => [];
}

class ChangeCategoryEvent extends CleaningEvent {
  final int index;

  const ChangeCategoryEvent(this.index);

  @override
  List<Object> get props => [index];
}
