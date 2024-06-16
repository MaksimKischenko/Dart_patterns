class MyList {
  List<int> _items = [1, 2, 3, 4, 5];

  Iterator<int> get iterator => _items.iterator;
}

void main() {
  var myList = MyList();
  var iterator = myList.iterator;

  while (iterator.moveNext()) {
    print(iterator.current);
  }
}