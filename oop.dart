import 'package:untitled/inheritance/home.dart';
import 'package:untitled/person.dart';

main() {
  List<Book> books = [];
  Book book1 = Book(
    name: "Flourish",
    description: "A Visionary New Understanding of Happiness and Well-being",
    id: 1,
    numberOfPages: 1250,
  );
  books.add(book1);

  Book book2 = Book(
      name: "The Happiness Hypothesis",
      description:
      "the truth might lie between the two extremes and contends that love depends on more than the self and is crucial to happiness.",
      id: 2,
      numberOfPages: 1540);
  books.add(book2);
  Book book3 = Book(name: "The Perfect Child", description: "A Washington Post and Amazon Charts bestseller", id: 3, numberOfPages: 980);
  books.add(book3);
  Book book4 = Book(name: "The Silent Bride", description: " In this chilling story from the bestselling author of The Secret Mother, "
      "it’s the wedding day of Alice’s dreams",id: 4, numberOfPages: 540);
  books.add(book4);

  books.forEach((element) {
    print(element);
  });



}
