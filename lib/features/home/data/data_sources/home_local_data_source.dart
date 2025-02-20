import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> ftchNewstBooks();
}
class HomeLocalDataImpl extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    
    throw UnimplementedError();
  }

  @override
  List<BookEntity> ftchNewstBooks() {
    throw UnimplementedError();
  }
  
}