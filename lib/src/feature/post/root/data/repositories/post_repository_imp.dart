import 'package:dartz/dartz.dart';
import 'package:fake_commerce/src/core/network/error_model.dart';
import 'package:fake_commerce/src/core/network/request_handler.dart';
import 'package:fake_commerce/src/feature/post/root/data/data_sources/post_data_source.dart';
import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
import 'package:fake_commerce/src/feature/post/root/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl({required this.dataSource});

  final PostDataSource dataSource;

  @override
  Future<Either<ErrorModel, List<PostModel>>> postList() async {
    return await dataSource.fetchPostList().guard(
          (data) => (data as List).map((e) {
            return PostModel.fromJson(e);
          }).toList(),
        );
  }

  @override
  Future<Either<ErrorModel, PostModel>> post(int id) async {
    return await dataSource
        .fetchPost(id)
        .guard((data) => PostModel.fromJson(data));
  }
}
