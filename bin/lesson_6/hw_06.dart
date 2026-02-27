import 'person.dart';

void main() {
  print('--- Teacher Section ---');
  var teacher = Teacher('John Brown', 40, true, 5);
  teacher.introduce();

  print('\n--- Students Section ---');
  
  var student1 = Student('Adam White', 17, false, {
    Subject.math: 90,
    Subject.physics: 85,
    Subject.english: 92,
  });
  
  var student2 = Student('Beknazar Denizbekov', 18, false, {
    Subject.math: 100,
    Subject.history: 95,
    Subject.biology: 90,
  });

  student1.introduce();
  student1.showMarks();
  
  print('---');
  
  student2.introduce();
  student2.showMarks();
}