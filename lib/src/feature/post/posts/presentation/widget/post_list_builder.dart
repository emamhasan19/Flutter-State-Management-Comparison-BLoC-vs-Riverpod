import 'package:fake_commerce/src/feature/post/posts/presentation/widget/post_card.dart';
import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
import 'package:flutter/material.dart';

class PostListBuilder extends StatelessWidget {
  const PostListBuilder({
    super.key,
    required this.posts,
  });

  final List<PostModel> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostCard(
          index: index + 1,
          postEntity: posts[index],
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}

//
// import 'package:fake_commerce/src/feature/post/posts/presentation/riverpod/providers.dart';
// import 'package:fake_commerce/src/feature/post/posts/presentation/widget/post_card.dart';
// import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// class PostListBuilder extends StatelessWidget {
//   const PostListBuilder({
//     super.key,
//     required this.posts,
//   });
//
//   final List<PostModel> posts;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       itemCount: posts.length,
//       itemBuilder: (context, index) {
//         return ProviderScope(
//           overrides: [
//             postDataProvider.overrideWithValue(
//               posts[index],
//             ),
//           ],
//           child: PostCard(
//             index: index + 1,
//             postEntity: posts[index],
//           ),
//         );
//       },
//       separatorBuilder: (context, index) {
//         return const Divider();
//       },
//     );
//   }
// }
