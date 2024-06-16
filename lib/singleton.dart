class Singleton {
  int? age;
  // Приватное поле для хранения единственного экземпляра класса.
  static Singleton? _instance;

  // Приватный конструктор.
  Singleton._();

  // Метод для получения единственного экземпляра класса.
  static Singleton? getInstance() {
    _instance ??= Singleton._();
    return _instance;
  }

  void showMessage() {
    print("Hello from Singleton!");
  }
}

void main() {
  // Создание нескольких ссылок на единственный экземпляр.
  final singleton1 = Singleton.getInstance();
  singleton1?.age = 10;

  //Он уже существует и облсуживает другие обьекты - age = 10
  final singleton2 = Singleton.getInstance();
  print(singleton2?.age); //10
}
