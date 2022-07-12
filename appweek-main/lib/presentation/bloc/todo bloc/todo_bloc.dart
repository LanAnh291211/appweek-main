import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/infor.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodoState> {
  TodosBloc() : super(TodoLoadingState()) {
    on<LoadTodosEvent>(_onLoadTodos);
    on<AddTodoEvent>(_onAddTodo);
    on<DeleteTodoEvent>(_onDeleteTodo);
    on<UpdateTodoEvent>(_onUpdateTodo);
  }

  void _onLoadTodos(LoadTodosEvent event, Emitter<TodoState> emit) {
    emit(
      TodoLoadedState(itemList: event.itemList),
    );
  }

  void _onAddTodo(AddTodoEvent event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoadedState) {
      emit(
        TodoLoadedState(
          itemList: List.from(state.itemList)..add(event.item),
        ),
      );
    }
  }

  void _onDeleteTodo(DeleteTodoEvent event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoadedState) {
      emit(TodoLoadedState(itemList: List.from(state.itemList)..remove(event.item)));
    }
  }

  void _onUpdateTodo(UpdateTodoEvent event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoadedState) {
      List<BookingModel> todos = state.itemList.map((todo) => todo.id == event.item.id ? event.item : todo).toList();
      emit(TodoLoadedState(itemList: todos));
    }
  }
}
