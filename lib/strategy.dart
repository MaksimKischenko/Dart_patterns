// Интерфейс стратегии
abstract class PaymentStrategy {
  void pay(int amount);
}

// Конкретная стратегия для оплаты кредитной картой
class CreditCardPayment implements PaymentStrategy {
  String cardNumber;
  String cvv;

  CreditCardPayment(this.cardNumber, this.cvv);

  @override
  void pay(int amount) {
    print('Оплата $amount руб. кредитной картой $cardNumber');
  }
}

// Конкретная стратегия для оплаты через PayPal
class PayPalPayment implements PaymentStrategy {
  String email;

  PayPalPayment(this.email);

  @override
  void pay(int amount) {
    print('Оплата $amount руб. через PayPal, email: $email');
  }
}

// Контекстный класс, который использует выбранную стратегию
class ShoppingCart {
  PaymentStrategy paymentStrategy;

  ShoppingCart(this.paymentStrategy);

  void checkout(int totalAmount) {
    // Здесь может быть другая логика
    paymentStrategy.pay(totalAmount);
  }
}

void main() {
  // Пример использования
  final creditCardPayment = CreditCardPayment('1234-5678-9012-3456', '123');
  final payPalPayment = PayPalPayment('example@email.com');

  final cart1 = ShoppingCart(creditCardPayment);
  final cart2 = ShoppingCart(payPalPayment);

  cart1.checkout(1000);
  cart2.checkout(500);

  /*
  Вывод:
  Оплата 1000 руб. кредитной картой 1234-5678-9012-3456
  Оплата 500 руб. через PayPal, email: example@email.com
  */
}
