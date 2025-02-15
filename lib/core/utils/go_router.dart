import 'package:bookly_app_clean_arch/features/splash_view/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final goRouter = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        }),
  ]);
}
