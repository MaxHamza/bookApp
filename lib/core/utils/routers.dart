import 'package:bookly_app/core/utils/locator_cubit_books.dart';
import 'package:bookly_app/features/home/data/managers/fetch_similar_books/fetch_similar_books_cubit.dart';
import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:bookly_app/features/home/data/presentation/view/details_view.dart';
import 'package:bookly_app/features/home/data/repositry/implement_home_repo.dart';
import 'package:bookly_app/features/search/presentation/view/search_book.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../features/home/data/presentation/view/home_view.dart';
import '../../features/splash/data/presentation/views/splash_view.dart';

abstract class AppRouter {
  static String searchBook = '/SearchBook';

  static final router = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const SplashView();
          },
        ),
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          },
        ),
        GoRoute(
          path: '/DetailsView',
          builder: (BuildContext context, GoRouterState state) =>
              BlocProvider(
                create: (context) => FetchSimilarBooksCubit(getIt.get<ImpHomeRepo>()),
                child: DetailsView(items:state.extra as Items ,)),
        ),
        GoRoute(
          path: searchBook,
          builder: (BuildContext context, GoRouterState state) {
            return const SearchBook();
          },
        )
      ]
  );
}