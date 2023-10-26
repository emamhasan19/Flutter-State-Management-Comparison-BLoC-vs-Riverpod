// import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
// import 'package:flutter/material.dart';
//
// class PostDetailsBuilder extends StatelessWidget {
//   const PostDetailsBuilder({
//     super.key,
//     required this.post,
//   });
//
//   final PostModel post;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       physics: const AlwaysScrollableScrollPhysics(),
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Title: ${post.title}",
//                 style: Theme.of(context).textTheme.titleLarge,
//                 textAlign: TextAlign.justify,
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 post.body,
//                 style: Theme.of(context).textTheme.bodyLarge,
//                 textAlign: TextAlign.justify,
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:fake_commerce/src/feature/post/details/presentation/riverpod/post_details_notifier.dart';
import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailsBuilder extends ConsumerWidget {
  const PostDetailsBuilder({
    super.key,
    required this.post,
  });

  final PostModel post;

  @override
  Widget build(BuildContext context, ref) {
    return RefreshIndicator(
      onRefresh: () => ref.refresh(postDetailsProvider(post.id).future),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Title: ${post.title}",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),
                Text(
                  post.body,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
