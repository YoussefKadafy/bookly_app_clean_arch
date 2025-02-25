part of 'fetured_books_cubit.dart';

abstract class FeturedBooksState extends Equatable {
  const FeturedBooksState();

  @override
  List<Object> get props => [];
}

class FeturedBooksInitial extends FeturedBooksState {}

class FeturedBooksLoading extends FeturedBooksState {}

class FeturedBooksSuccess extends FeturedBooksState {
  final List<BookEntity> books;

  const FeturedBooksSuccess(this.books);
}

class FeturedBooksFailure extends FeturedBooksState {
  final String errorMessage;

  const FeturedBooksFailure(this.errorMessage);
}
