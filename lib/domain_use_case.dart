// Слой domain
abstract class Repository {
  Future<List<Item>> getItems();
}

class SomeUseCase {
  final Repository repository;

  SomeUseCase(this.repository);

  Future<List<Item>> fetchData() async {
    return await repository.getItems();
  }
}

class Item{}