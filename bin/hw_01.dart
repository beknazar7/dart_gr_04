void main() {

   String myName = 'Beknazar';
   print('Hello! My name is $myName ');
   int myAge = 18;
   print('I am $myAge years old');
   String myHome = 'Bishkek';
   print('I live in $myHome');
   var myJob = 'Programmer';
   print('My profession is $myJob');
   var freeTime = 'to play games';
   print('In my free time, I enjoy $freeTime');



  int mySalary = 60000;
  mySalary = (mySalary * 12);
  print('My yearly income:${mySalary} USD.');
  print('My yearly income with 10% bonus:${mySalary ~/ 10 + mySalary} USD.');

 String Practice = 'Knowledge is power, but practice makes perfect.';
 print(Practice.trim());
 print(Practice.toUpperCase());
 print(Practice.replaceAll('practice', 'experience'));
 print(Practice.contains('power'));

 var apples = 15;
 var people = 2;
 var per_person = apples ~/ people;
 var left_over = apples % people;
 print('Each person gets $per_person apples.');
 print('Apples left: $left_over.');


int currentYear = 2026;
int my_Age = 19;
print('I was born in ${currentYear - my_Age} ');


var city = "Bishkek";
final country = "Kyrgyzstan";
city = 'Naryn'; 
//country = 'Pakistan'; //здесь она дает ошибку, потому что функция final неизменяемая(константа)
print(city);
print(country);
}
