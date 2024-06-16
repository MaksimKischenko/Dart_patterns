// Интерфейс для наблюдателей
abstract class Observer {
  void update(String message);
}

// Интерфейс для издателей
abstract class Subject {
  void addObserver(Observer observer);
  void removeObserver(Observer observer);
  void notifyObservers();
}

// Конкретный издатель
class NewsPublisher implements Subject {
  final List<Observer> _observers = [];
  String _latestNews = '';

  @override
  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  void addNews(String news) {
    _latestNews = news;
    notifyObservers();
  }

  @override
  void notifyObservers() {
    for (var observer in _observers) {
      observer.update(_latestNews);
    }
  }
}

// Конкретный наблюдатель
class NewsSubscriber implements Observer {
  String _name;

  NewsSubscriber(this._name);

  @override
  void update(String message) {
    print('$_name получил новую новость: $message');
  }
}

void main() {
  final publisher = NewsPublisher();
  final subscriber1 = NewsSubscriber('Подписчик 1');
  final subscriber2 = NewsSubscriber('Подписчик 2');

  publisher.addObserver(subscriber1);
  publisher.addObserver(subscriber2);

  publisher.addNews('Важные новости: Dart на пике популярности!');

  publisher.removeObserver(subscriber2);

  publisher.addNews('Вышла новая версия Dart 3.0!');
}

/*
Вывод:

Подписчик 1 получил новую новость: Важные новости: Dart на пике популярности!
Подписчик 2 получил новую новость: Важные новости: Dart на пике популярности!
Подписчик 1 получил новую новость: Вышла новая версия Dart 3.0!
*/