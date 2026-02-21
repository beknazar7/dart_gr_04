void main(){
  for(var i = 1; i <=30; i++){
    if(i % 3 == 0 && i % 5 == 0){
     print('FizzBuzz');
    } else if(i % 3 == 0){
     print('Fizz');
    } else if(i % 5 == 0){
     print('Buzz');
    } else{
     print(i);
    }
   }
  
  List<int> numbers = [3, -2, 0, 7, -5, 10, 1];

  int count = 0;
  int sum = 0;

  for (int number in numbers) {
    if (number > 0) {
      count++;
      sum += number;
    }
  }
  if (count > 0) {
    double average = sum / count;
    print('Positive numbers count: $count');
    print('Average of positive numbers: $average');
  } else {
    print('No positive numbers.');
  }


  Map<String, int> fruits = {
    'Apple': 5, 
    'Banana': 2, 
    'Mango': 7, 
    'Orange': 0
  };
  fruits.forEach((fruitName, count) {
    if (count > 0) {
      print('Available: $fruitName ($count pcs)');
    }
  });

} 