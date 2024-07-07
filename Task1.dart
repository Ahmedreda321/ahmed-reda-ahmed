class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);

  void displayInfo() {
    print('Title: $title, Author: $author, Pages: $numberOfPages');
  }
}

void main() {
  Book book = Book('The Great Gatsby', 'F. Scott Fitzgerald', 180);
  book.displayInfo();
}
