void main(List<String> arguments) {}

int sumOfArray(List<int> arr) {
  int sum = 0;
  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}

int linearSearch(List<int> arr, int target) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      return i; // Возвращаем индекс элемента, если он найден
    }
  }
  return -1; // Если элемент не найден, возвращаем -1
}

int findMax(List<int> arr) {
  if (arr.isEmpty) {
    throw Exception("Массив пуст");
  }

  int max = arr[0]; // Предполагаем, что первый элемент - максимальный

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > max) {
      max = arr[i];
    }
  }

  return max;
}

double calculateAverage(List<int> arr) {
  if (arr.isEmpty) {
    throw Exception("Массив пуст");
  }

  int sum = 0;
  for (int element in arr) {
    sum += element;
  }

  double average = sum / arr.length.toDouble(); // Расчет среднего значения

  return average;
}

bool containsDuplicates(List<int> arr) {
  Set<int> uniqueElements = <int>{};

  for (int element in arr) {
    if (uniqueElements.contains(element)) {
      return true; // Найден дубликат
    } else {
      uniqueElements.add(element); // Добавляем элемент в хэш-таблицу
    }
  }

  return false; // Дубликаты не найдены
}

void findMaxMinDifference(List<int> arr) {
  if (arr.isEmpty) {
    throw Exception("Массив пуст");
  }

  int minDiff = arr[1] -
      arr[0]; // Инициализируем минимальную разницу значением между первыми двуми элементами
  int maxDiff =
      minDiff; // Инициализируем максимальную разницу значением минимальной разницы

  for (int i = 1; i < arr.length - 1; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      int diff = arr[j] - arr[i];
      if (diff < minDiff) {
        minDiff = diff;
      }
      if (diff > maxDiff) {
        maxDiff = diff;
      }
    }
  }

  print("Наименьшая разница между элементами: $minDiff");
  print("Наибольшая разница между элементами: $maxDiff");
}
