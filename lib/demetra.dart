class Customer {
  String name;
  
  Customer(this.name);
}

class Order {
  int orderId;
  Customer _customer;

  Order(this.orderId, this._customer);
  
  String getCustomerName() {
    return _customer.name; // Соблюдение закона Деметры
  }
}

void main() {
 Order order = Order(100, Customer('ALEX'));
 order.getCustomerName();
}
