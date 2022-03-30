import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final String id;
  final String task;
  final String description;
  bool? isCompleted;
  bool? isCanceled;

  Todo(
      {required this.id,
      required this.task,
      required this.description,
      this.isCompleted,
      this.isCanceled}) {
    isCompleted = isCompleted ?? false;
    isCanceled = isCanceled ?? false;
  }

  Todo copyWith({
    String? id,
    String? task,
    String? description,
    bool? isCompleted,
    bool? isCanceled,
  }) {
    return Todo(
      id: id ?? this.id,
      task: task ?? this.task,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
      isCanceled: isCanceled ?? this.isCanceled,
    );
  }

  @override
  List<Object?> get props => [
        id,
        task,
        description,
        isCompleted,
        isCanceled,
      ];

  static List<Todo> todos = [
    Todo(
      id: '1',
      task: 'Sample Todo 1',
      description: 'This is a test todo',
    ),
    Todo(
      id: '2',
      task: 'Sample Todo 2',
      description: 'This is a test todo',
    ),
  ];
}
