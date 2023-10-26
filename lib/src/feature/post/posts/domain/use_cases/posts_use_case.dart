import 'package:dartz/dartz.dart';
import 'package:fake_commerce/src/core/network/error_model.dart';
import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
import 'package:fake_commerce/src/feature/post/root/domain/repositories/post_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postUseCaseProvider = Provider(
  (ref) {
    return PostsUseCase(
      ref.read(postRepositoryProvider),
    );
  },
);

class PostsUseCase {
  PostsUseCase(this.repository);

  final PostRepository repository;

  Future<Either<ErrorModel, List<PostModel>>> postList() async {
    return await repository.postList();
  }
}
