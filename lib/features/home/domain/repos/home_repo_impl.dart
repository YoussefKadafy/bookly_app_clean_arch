import 'package:bookly_app_clean_arch/core/errors/failure.dart';
import 'package:bookly_app_clean_arch/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app_clean_arch/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_clean_arch/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var booksList = homeLocalDataSource.fetchFeaturedBooks();

      if (booksList.isNotEmpty) {
        return right(booksList);
      }

      var books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var booksList = await homeLocalDataSource.ftchNewstBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }

      var books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
