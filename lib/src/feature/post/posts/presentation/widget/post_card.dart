import 'package:fake_commerce/src/feature/post/details/presentation/pages/post_details_page.dart';
import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  const PostCard({
    Key? key,
    required this.index,
    required this.postEntity,
  }) : super(key: key);

  final int index;
  final PostEntity postEntity;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  void initState() {
    super.initState();

    // Future(() {
    //   ref.watch(postDataProvider);
    // });
  }

  @override
  Widget build(BuildContext context) {
    // PostModel data = ref.read(postDataProvider);

    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostDetailsPage(
                // postId: data.id,
                postId: widget.postEntity.id,
              ),
            ),
          );
        },
        leading: CircleAvatar(
          child: Text(widget.index.toString()),
        ),
        title: Text(widget.postEntity.title),
        subtitle: Text(widget.postEntity.title),
      ),
    );
  }
}

// import 'package:fake_commerce/src/feature/post/details/presentation/pages/post_details_page.dart';
// import 'package:fake_commerce/src/feature/post/posts/presentation/riverpod/providers.dart';
// import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// class PostCard extends ConsumerStatefulWidget {
//   const PostCard({
//     Key? key,
//     required this.index,
//     required this.postEntity,
//   }) : super(key: key);
//
//   final int index;
//   final PostEntity postEntity;
//
//   @override
//   ConsumerState<PostCard> createState() => _PostCardState();
// }
//
// class _PostCardState extends ConsumerState<PostCard> {
//   @override
//   void initState() {
//     super.initState();
//
//     Future(() {
//       ref.watch(postDataProvider);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     PostModel data = ref.read(postDataProvider);
//
//     return Card(
//       child: ListTile(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => PostDetailsPage(
//                 postId: data.id,
//               ),
//             ),
//           );
//         },
//         leading: CircleAvatar(
//           child: Text(widget.index.toString()),
//         ),
//         title: Text(widget.postEntity.title),
//         subtitle: Text(widget.postEntity.title),
//       ),
//     );
//   }
// }
