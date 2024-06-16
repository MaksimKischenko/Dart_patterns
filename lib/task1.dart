class Task {
  String title;
  bool isCompleted;

  Task(this.title, this.isCompleted);
}

class TaskManager {
  // Здесь вы можете реализовать методы для сохранения и загрузки задач из файла
  // Методы для сохранения и загрузки будут изменяемыми аспектами.

  void saveTasks(List<Task> tasks) {
    // Реализация сохранения задач в файл
  }

  List<Task> loadTasks() {
    // Реализация загрузки задач из файла
    return [];
  }
}
