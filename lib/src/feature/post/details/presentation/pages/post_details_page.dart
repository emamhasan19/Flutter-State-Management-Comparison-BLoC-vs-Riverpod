// import 'package:fake_commerce/src/feature/post/details/presentation/widgets/post_details_builder.dart';
// import 'package:fake_commerce/src/feature/post/details/presentation/widgets/post_details_loading_shimmer.dart';
// import 'package:fake_commerce/src/feature/post/posts/presentation/bloc/post_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class PostDetailsPage extends StatefulWidget {
//   const PostDetailsPage({
//     Key? key,
//     required this.postId,
//   }) : super(key: key);
//
//   final int postId;
//
//   @override
//   State<PostDetailsPage> createState() => _PostDetailsPageState();
// }
//
// class _PostDetailsPageState extends State<PostDetailsPage> {
//   @override
//   void initState() {
//     super.initState();
//     context
//         .read<PostDetailsBloc>()
//         .add(SinglePostFetchedEvent(id: widget.postId));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Post ${widget.postId}'),
//         centerTitle: true,
//       ),
//       body: BlocBuilder<PostDetailsBloc, BaseState>(
//         builder: (context, state) {
//           if (state is LoadingState) {
//             return const PostDetailsLoadingShimmer();
//           } else if (state is SuccessState) {
//             return PostDetailsBuilder(post: state.data);
//           }
//           return const Text('error');
//         },
//       ),
//     );
//   }
// }

import 'package:fake_commerce/src/feature/post/details/presentation/riverpod/post_details_notifier.dart';
import 'package:fake_commerce/src/feature/post/details/presentation/widgets/post_details_builder.dart';
import 'package:fake_commerce/src/feature/post/details/presentation/widgets/post_details_loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailsPage extends ConsumerWidget {
  const PostDetailsPage({
    Key? key,
    required this.postId,
  }) : super(key: key);

  final int postId;

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(postDetailsProvider(postId));

    return Scaffold(
      appBar: AppBar(
        title: Text('Post $postId'),
        centerTitle: true,
      ),
      body: state.when(
        data: (post) {
          return PostDetailsBuilder(post: post!);
        },
        loading: () => const PostDetailsLoadingShimmer(),
        error: (error, stackTrace) {
          return const Center(child: Text('Error'));
        },
      ),
    );
  }
}
