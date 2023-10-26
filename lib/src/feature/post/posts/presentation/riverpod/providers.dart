import 'package:fake_commerce/src/core/state/base_state.dart';
import 'package:fake_commerce/src/feature/post/posts/domain/use_cases/posts_use_case.dart';
import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'posts_notifier.dart';

final postsProvider = StateNotifierProvider<PostsNotifier, BaseState>(
  (ref) {
    return PostsNotifier(
      ref: ref,
      useCase: ref.watch(postUseCaseProvider),
    );
  },
);

final postDataProvider = Provider<PostModel>(
  (ref) => throw UnimplementedError(),
);
