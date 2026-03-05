import 'book.dart';
import 'library.dart';

void main(){
  Book myBook = Book("Harry Potter","J.K. Rowling", 9.3);
  
  myBook.displayInfo();

print('---------------------------------------');

var myLibrary = Library('City Library');

  myLibrary.addBook(Book('Harry Potter', 'J.K. Rowling', 9.3));
  myLibrary.addBook(Book('Sherlock Holmes', 'A.C. Doyle', 9.5));

myLibrary.showBooks();
}