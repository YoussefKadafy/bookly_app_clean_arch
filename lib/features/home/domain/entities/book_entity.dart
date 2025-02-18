import 'package:equatable/equatable.dart';

class BookEntity extends Equatable {
  final String? bookName;
  final String? bookAuthorName;
  final num? price;
  final num? rating;
  final String? bookId;
  final String? image;

  const BookEntity({
    required this.image,
    required this.bookName,
    required this.bookAuthorName,
    required this.price,
    required this.rating,
    required this.bookId,
  });

  @override
  List<Object?> get props => [
        bookName,
        bookAuthorName,
        price,
        rating,
        bookId,
        image,
      ];
}
