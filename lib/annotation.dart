// ignore_for_file: public_member_api_docs, sort_constructors_first
class MyAnnotation {
  final String message;
  const MyAnnotation(this.message);
}

@MyAnnotation("This is a message")
class MyClass {
  @MyAnnotation("Field message")
  final int myField;
  MyClass({
    required this.myField,
  });
}


void main() {
 var temp = MyClass(myField: 9);
 print(temp.myField);

}