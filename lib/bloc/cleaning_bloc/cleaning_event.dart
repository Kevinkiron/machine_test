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

class BookMark extends CleaningEvent {
  final int index;

  const BookMark(this.index);

  @override
  List<Object> get props => [index];
}

class AddBookmarkEvent extends CleaningEvent {
  final ServicePerson servicePerson;
  const AddBookmarkEvent(this.servicePerson);

  @override
  List<Object> get props => [servicePerson];
}

class FetchSaved extends CleaningEvent {
  const FetchSaved();

  @override
  List<Object> get props => [];
}

class RemoveBookmarkEvent extends CleaningEvent {
  final String servicePersonId;

  const RemoveBookmarkEvent(this.servicePersonId);

  @override
  List<Object> get props => [servicePersonId];
}
