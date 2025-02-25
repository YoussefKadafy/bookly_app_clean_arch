import 'package:bloc/bloc.dart';
import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:equatable/equatable.dart';

part 'fetured_books_state.dart';

class FeturedBooksCubit extends Cubit<FeturedBooksState> {
  FeturedBooksCubit() : super(FeturedBooksInitial());
}
