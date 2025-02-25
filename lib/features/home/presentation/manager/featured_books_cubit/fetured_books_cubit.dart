import 'package:bloc/bloc.dart';
import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_clean_arch/features/home/domain/use_case/fetch_featured_books_use_case.dart';
import 'package:equatable/equatable.dart';

part 'fetured_books_state.dart';

class FeturedBooksCubit extends Cubit<FeturedBooksState> {
  FeturedBooksCubit(this.fetchFeaturedBooksUseCase)
      : super(FeturedBooksInitial());
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeturedBooksLoading());
    var result = await fetchFeaturedBooksUseCase.call();
    result.fold((failure) {
      emit(
        FeturedBooksFailure(failure.errorMassage),
      );
    }, (books) {
      emit(
        FeturedBooksSuccess(books),
      );
    });
  }
}
