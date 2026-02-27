enum Subject { math, physics, english, history, biology }

class Person {
  String fullName;
  int age;
  bool? isMarried;

  Person(this.fullName, this.age, this.isMarried);

  void introduce() {
    var marriedStatus = (isMarried ?? false) ? "Yes" : "No";
    print('Hi! My name is $fullName. I am $age years old. Married: $marriedStatus');
  }
}

class Student extends Person {
  Map<Subject, double> marks;


  Student(String fullName, int age, bool isMarried, this.marks)
      : super(fullName, age, isMarried);

  void showMarks() {
    print('Student: $fullName');
    for (var entry in marks.entries) {
      print('${entry.key.name}: ${entry.value}');
    }
  }

  double calculateAverage() {
    if (marks.isEmpty) return 0.0;
    double sum = 0;
    for (var mark in marks.values) {
      sum += mark;
    }
    return sum / marks.length;
  }

  @override
  void introduce() {
    super.introduce();
    print('Average mark: ${calculateAverage().toStringAsFixed(1)}');
  }
}

class Teacher extends Person {
  int experience;
  static const double _baseSalary = 50000;

  Teacher(String fullName, int age, bool isMarried, this.experience)
      : super(fullName, age, isMarried);

  double calculateSalary() {
    double salary = _baseSalary;

    if (experience > 3) {
      int extraYears = experience - 3;
      for (int i = 0; i < extraYears; i++) {
        salary += salary * 0.05;
      }
    }

    if (isMarried ?? false) {
      salary += 5000;
    }

    return salary;
  }

  @override
  void introduce() {
    super.introduce();
    print('Experience: $experience years.');
    print('Salary: ${calculateSalary().toStringAsFixed(2)}');
  }
}
