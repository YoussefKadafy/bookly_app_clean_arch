import 'package:bookly_app_clean_arch/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    throw UnimplementedError();
  }
}
