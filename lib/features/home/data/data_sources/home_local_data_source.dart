import 'package:bookly_app_clean_arch/consts.dart';
import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> ftchNewstBooks();
}

class HomeLocalDataImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var featuredBox = Hive.box<BookEntity>(kFeaturedBox);
    return featuredBox.values.toList();
  }

  @override
  List<BookEntity> ftchNewstBooks() {
    var newestBox = Hive.box<BookEntity>(kNewestBox);
    return newestBox.values.toList();
  }
}
