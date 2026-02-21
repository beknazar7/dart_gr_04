import 'dart:io';

// int calculatePrice(int count, int price){
//   return count + price;
// }

// void main(){
//   int result = calculatePrice(3, 6);
//   print(result);
// }


import 'dart:io'; 


void showProfile({required String name, required int age, String? city}) {
  String homeCity = city ?? 'Секрет'; 
  print('Привет, меня зовут $name, мне $age лет. Я из города $homeCity');
}

void main() {
  print('Введите ваше имя:');
  String name = stdin.readLineSync() ?? 'Аноним';

  print('Введите ваш возраст:');
  int age = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print('Введите ваш город (можно пропустить):');
  String? cityInput = stdin.readLineSync();
  if (cityInput != null && cityInput.isEmpty) cityInput = null;

  showProfile(name: name, age: age, city: cityInput);
}