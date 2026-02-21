import 'dart:io';

void main(){
   print('Введите ваше имя:');
  String? name = stdin.readLineSync();
  print('Привет, $name!');

print('Enter ur age: ');
int age = int.parse(stdin.readLineSync()!);
print('Air temperature: ');
int temperature = int.parse(stdin.readLineSync()!);

if(age >= 20 && age <= 45 && temperature >= -20 && temperature <= 30) {
  print('You can go for a walk.');
} else if(age < 20 && temperature >= 0 && temperature <= 28){
  print('You can go for a walk.');
} else if(age > 45 && temperature >= -10 && temperature <= 25){
  print('You can go for a walk.');
} else {
  print('Stay home.');
}



print('What day of the week is it today? ');
String? dayOfWeek = stdin.readLineSync();

switch (dayOfWeek) {
  case 'Monday':
    print('It\'s the start of the week!');
    break;
  case == "Tuesday" || == "Wednesday" || == "Thursday":
    print('Keep going, almost weekend!');
    break;
  case 'Friday':
    print(' Weekend is coming!');
    break;
  case == 'Saturday' || == 'Sunday':
    print('Enjoy your weekend!');
    break;
  default:
    print('Invalid day.');
    break;
}


  
  print('Enter your password:');
  String? password = stdin.readLineSync();

  if (password == null || password.isEmpty) {
    print('Password cannot be empty.');
  } else {
    if (password.length < 6) {
      print('Password too short.');
    } else {
      if (password == 'dart123') {
        print('Access granted.');
      } else {
        print('Wrong password.');
      }
    }
  }
 
 

}


