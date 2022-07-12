part of 'todo_bloc.dart';

@immutable
abstract class TodosEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadTodosEvent extends TodosEvent {
  final List<BookingModel> itemList;

  LoadTodosEvent({this.itemList = const <BookingModel>[]});

  @override
  List<Object> get props => [itemList];
}

class AddTodoEvent extends TodosEvent {
  final BookingModel item;

  AddTodoEvent({required this.item});

  @override
  List<Object> get props => [item];
}

class UpdateTodoEvent extends TodosEvent {
  final BookingModel item;

  UpdateTodoEvent({required this.item});

  @override
  List<Object> get props => [item];
}

class DeleteTodoEvent extends TodosEvent {
  final BookingModel item;

  DeleteTodoEvent({required this.item});

  @override
  List<Object> get props => [item];
}
