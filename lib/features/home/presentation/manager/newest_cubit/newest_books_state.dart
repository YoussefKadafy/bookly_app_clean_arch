part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksSuccessedState extends NewestBooksState {
  final List<BookEntity> books;

  const NewestBooksSuccessedState(this.books);
}

class NewestBooksFailureState extends NewestBooksState {
  final String errorMessage;

  const NewestBooksFailureState(this.errorMessage);
}
