import 'package:fake_commerce/src/core/state/base_state.dart';
import 'package:fake_commerce/src/feature/post/posts/domain/use_cases/posts_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostsNotifier extends StateNotifier<BaseState> {
  PostsNotifier({
    required this.ref,
    required this.useCase,
  }) : super(InitialState());

  final Ref ref;
  final PostsUseCase useCase;

  Future<void> postList() async {
    state = const LoadingState();
    try {
      final result = await useCase.postList();
      result.fold(
        (l) {
          return state = ErrorState(data: l.toString());
        },
        (r) {
          return state = SuccessState(data: r);
        },
      );
    } catch (e) {
      state = ErrorState(data: e.toString());
    }
  }
}
