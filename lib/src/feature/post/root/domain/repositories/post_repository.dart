import 'package:dartz/dartz.dart';
import 'package:fake_commerce/src/core/network/error_model.dart';
import 'package:fake_commerce/src/feature/post/root/data/data_sources/post_data_source.dart';
import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
import 'package:fake_commerce/src/feature/post/root/data/repositories/post_repository_imp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postRepositoryProvider = Provider(
  (ref) {
    return PostRepositoryImpl(
      dataSource: ref.read(postDataSourceProvider),
    );
  },
);

abstract class PostRepository {
  Future<Either<ErrorModel, List<PostModel>>> postList();

  Future<Either<ErrorModel, PostModel>> post(int id);
}
