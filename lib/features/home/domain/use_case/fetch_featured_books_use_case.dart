import 'package:bookly_app_clean_arch/core/utils/errors/failure.dart';
import 'package:bookly_app_clean_arch/core/utils/use_cases/use_case.dart';
import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_clean_arch/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? parameter]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
