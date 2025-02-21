import 'package:bookly_app_clean_arch/consts.dart';
import 'package:bookly_app_clean_arch/core/utils/api_service.dart';
import 'package:bookly_app_clean_arch/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app_clean_arch/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/adapters.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?q=programming&Filtering=free-ebooks');
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?q=programming&Filtering=free-ebooks&Sorting=newest');
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  void saveBooksData(List<BookEntity> books, String boxName) {
    var featuredBox = Hive.box(kFeaturedBox);
    featuredBox.addAll(books);
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var element in data['items']) {
      books.add(BookModel.fromJson(element));
    }
    return books;
  }
}
