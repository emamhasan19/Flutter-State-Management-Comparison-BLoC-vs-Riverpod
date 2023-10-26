import 'package:fake_commerce/src/core/router/routers.dart';
import 'package:fake_commerce/src/feature/home/home_page.dart';
import 'package:fake_commerce/src/feature/post/details/presentation/pages/post_details_page.dart';
import 'package:fake_commerce/src/feature/post/posts/presentation/pages/post_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider((ref) => _router);

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: Routes.home.name,
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const HomePage(),
        );
      },
      routes: [
        GoRoute(
          path: Routes.postList.name,
          name: Routes.postList.name,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const PostPage(),
            );
          },
        ),
        GoRoute(
          path: Routes.postDetails.name,
          name: Routes.postDetails.name,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: PostDetailsPage(
                postId: int.parse(state.queryParameters['id']!),
              ),
            );
          },
        ),
      ],
    ),
  ],
);
