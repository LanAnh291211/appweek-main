part of 'todo_bloc.dart';

abstract class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];
}

class TodoLoadingState extends TodoState {}

class TodoLoadedState extends TodoState {
  final List<BookingModel> itemList;

  TodoLoadedState({this.itemList = const <BookingModel>[]});

  @override
  List<Object> get props => [itemList];
}
