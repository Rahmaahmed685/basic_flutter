class Book {
  String name = "";
  String description = '';
  int id = 0;
  int numberOfPages = 0;


  Book({ required this.name, required this.description, required this.id, required this.numberOfPages}){


  }

  @override
  String toString() {
    return 'Book{name: $name,description: $description, id : $id, number Of Page:$numberOfPages }';
  }
}









