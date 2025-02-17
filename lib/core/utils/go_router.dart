import 'package:bookly_app_clean_arch/features/home/presentation/view/book_details_view.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/home_view.dart';
import 'package:bookly_app_clean_arch/features/search/presentatio/view/search_view.dart';
import 'package:bookly_app_clean_arch/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/Homeview';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';
  static final goRouter = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        }),
    GoRoute(
      path: kHomeView,
      builder: (context, state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => const BookDetailsView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    )
  ]);
}
