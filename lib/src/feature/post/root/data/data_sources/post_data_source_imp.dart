import 'package:dio/dio.dart';
import 'package:network/network.dart';

import 'post_data_source.dart';

class PostDataSourceImpl implements PostDataSource {
  PostDataSourceImpl({
    required this.client,
  });

  final RestClient client;

  @override
  Future<Response> fetchPostList() async {
    return await client.get(
      APIType.public,
      'posts',
    );
  }

  @override
  Future<Response> fetchPost(int id) async {
    return await client.get(
      APIType.public,
      'posts/$id',
    );
  }
}
