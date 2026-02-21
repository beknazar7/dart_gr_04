import 'dart:io';

int totalCalls = 0;

void greet(){
  print(' Hello! Welcome to Dart programming!');
}
 void main(){
  greet();
totalCalls++;
 
 introduce(name: 'Beknazar', age: 18);
 totalCalls++;
 introduce(name: "Beka", age: 36);
 totalCalls++;
 introduce(name: "Bek",  age: 54);
 totalCalls++;

 addNumbers(5, 5);
 totalCalls++;


 double tot1 = calculateDiscount(price: 100);
  print('Final price (only price): \$$tot1');

  double tot2 = calculateDiscount(price: 100, discount: 10);
  print('Final price (price + discount): \$$tot2');

  double tot3 = calculateDiscount(price: 100, discount: 10, tax: 5);
  print('Final price (price + discount + tax): \$$tot3');

  print('---------------------------');
  var X = totalCalls;
  print('Total function calls: $X');
 }

 void introduce({required String name, required int age}){
  print('My name is $name and I am $age years old.');
 }
 
 void addNumbers(int a, int b){
  var sum = a + b;
print('Sum of $a and $b is $sum');
 }

 double calculateDiscount({required double price, double discount = 0, double tax = 0,}) {
  totalCalls++;
  double finalPrice = price - (price * discount / 100) + (price * tax / 100);
  return finalPrice;
}