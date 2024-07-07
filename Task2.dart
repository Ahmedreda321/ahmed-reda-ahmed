import 'task1.dart';

class Novel extends Book {
  String genre;

  Novel(String title, String author, int numberOfPages, this.genre)
      : super(title, author, numberOfPages);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre: $genre');
  }
}

void main() {
  Novel novel =
      Novel('The Great Gatsby', 'F. Scott Fitzgerald', 180, 'Fiction');
  novel.displayInfo();
}
