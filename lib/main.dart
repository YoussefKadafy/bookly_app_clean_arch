import 'package:bookly_app_clean_arch/consts.dart';
import 'package:bookly_app_clean_arch/core/utils/functions/service_locator.dart';
import 'package:bookly_app_clean_arch/core/utils/go_router.dart';
import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_clean_arch/features/home/domain/repos/home_repo_impl.dart';
import 'package:bookly_app_clean_arch/features/home/domain/use_case/fetch_featured_books_use_case.dart';
import 'package:bookly_app_clean_arch/features/home/domain/use_case/fetch_newest_books_use_case.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/manager/featured_books_cubit/fetured_books_cubit.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/manager/newest_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  setUpServiceLocator();
  Hive.registerAdapter(BookEntityAdapter());
  Hive.openBox(kFeaturedBox);
  Hive.openBox(kNewestBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeturedBooksCubit(
            FetchFeaturedBooksUseCase(
              locator.get<HomeRepoImpl>(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            FetchNewestBooksUseCase(
              locator.get<HomeRepoImpl>(),
            ),
          ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.goRouter,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      ),
    );
  }
}
