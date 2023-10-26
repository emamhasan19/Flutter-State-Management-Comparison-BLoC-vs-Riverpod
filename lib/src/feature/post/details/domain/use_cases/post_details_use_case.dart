import 'package:dartz/dartz.dart';
import 'package:fake_commerce/src/core/network/error_model.dart';
import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
import 'package:fake_commerce/src/feature/post/root/domain/repositories/post_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postDetailsUseCaseProvider = Provider<PostDetailsUseCase>(
  (ref) {
    final repository = ref.watch(postRepositoryProvider);
    return PostDetailsUseCase(repository);
  },
);

class PostDetailsUseCase {
  PostDetailsUseCase(this._repository);

  final PostRepository _repository;

  Future<Either<ErrorModel, PostModel>> post(int id) async {
    return await _repository.post(id);
  }
}
