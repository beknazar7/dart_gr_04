import 'book.dart';
import 'hw_05.dart';


class Library {
  String name;
  final List<Book> _books = [];

  Library(this.name);

  void addBook(Book b) {
    _books.add(b);
  }

  void showBooks() {
    print('Library: $name');
    print('Books list:');
    
    if (_books.isEmpty) {
      print('The library is currently empty.');
      return;
    }

    for (int i = 0; i < _books.length; i++) {
      print('${i + 1}. ${_books[i].title}');
    }
  }
}


