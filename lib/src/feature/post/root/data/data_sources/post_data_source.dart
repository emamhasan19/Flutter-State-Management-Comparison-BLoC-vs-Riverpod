import 'package:dio/dio.dart';
import 'package:fake_commerce/src/core/network/network.dart';
import 'package:fake_commerce/src/feature/post/root/data/data_sources/post_data_source_imp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postDataSourceProvider = Provider(
  (ref) {
    return PostDataSourceImpl(
      client: ref.read(dioProvider),
    );
  },
);

abstract class PostDataSource {
  Future<Response> fetchPostList();

  Future<Response> fetchPost(int id);
}
