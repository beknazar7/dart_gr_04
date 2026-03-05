import 'library.dart';
import 'hw_05.dart';

class Book {
  String _title;
  String _author;
  double _rating;

  String get title => _title;
  String get author => _author;
  double get rating => _rating;

  set rating(double value){
    if(value > 0 && value < 10){
      _rating = value;
    } else{
      print('Ошибка: Рейтинг должен быть от 0 до 10');
    }
  }

  Book(this._title, this._author, this._rating);
  Book.withRating(this._title, this._author, this._rating);


  void displayInfo(){
    print('Title: $_title \n Author: $_author \n Rating: $_rating');
  }

  @override
  String toString() {
    return 'Книга: "$_title", Автор: $_author, Рейтинг: $_rating';
  }
}