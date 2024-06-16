// Пример интерфейса, который будет использоваться для оригинального объекта и его заместителя.
abstract class Image {
  void display();
}

// Реальный объект, который будет загружать изображение.
class RealImage implements Image {
  final String _filename;

  RealImage(this._filename) {
    // Здесь можно добавить логику загрузки изображения.
    print('Loading image: $_filename');
  }

  @override
  void display() {
    print('Displaying image: $_filename');
  }
}

// Динамический заместитель, который создает объект RealImage по требованию.
class DynamicProxy implements Image {
  final String _filename;
  RealImage? _realImage;

  DynamicProxy(this._filename);

  @override
  void display() {
    if (_realImage == null) {
      _realImage = RealImage(_filename);
    }
    _realImage?.display();
  }
}

void main() {
  // Используем заместителя для загрузки и отображения изображения.
  final Image image = DynamicProxy('example.jpg');

  // Изображение будет загружено только при вызове display.
  image.display();

  // Повторный вызов display не приведет к повторной загрузке.
  image.display();
}