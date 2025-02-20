import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity extends Equatable {
  @HiveField(0)
  final String? bookName;

  @HiveField(1)
  final String? bookAuthorName;

  @HiveField(2)
  final num? price;

  @HiveField(3)
  final num? rating;

  @HiveField(4)
  final String? bookId;

  @HiveField(5)
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
