import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app/controller/to_do_controller.dart';
import 'package:to_do_app/state/to_do_state.dart';

final remianingTodoProvider = StateProvider<int>((ref) {
  final todos = ref.watch(todoControllerProvider).todos;
  var remainingTodos = todos.where((element) => element.isCompleted).toList();
  return remainingTodos.length;
});

final allTodoProvider = StateProvider<TodoState>((ref) {
  final todos = ref.watch(todoControllerProvider).todos;
  return TodoState.initial().copyWith(todos: todos);
});

final pinnedTodoProvider = StateProvider<TodoState>((ref) {
  final todos = ref.watch(todoControllerProvider).todos;
  var pinnedTodos = todos.where((element) => element.isPinned).toList();
  return TodoState.initial().copyWith(todos: pinnedTodos);
});

final activeTodoProvider = StateProvider<TodoState>((ref) {
  final todos = ref.watch(todoControllerProvider).todos;
  var activeTodos = todos.where((element) => !element.isCompleted).toList();
  return TodoState.initial().copyWith(todos: activeTodos);
});

final completedTodoProvider = StateProvider<TodoState>((ref) {
  final todos = ref.watch(todoControllerProvider).todos;
  var completedTodos = todos.where((element) => element.isCompleted).toList();
  return TodoState.initial().copyWith(todos: completedTodos);
});
