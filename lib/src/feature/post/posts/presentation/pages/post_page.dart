// import 'package:fake_commerce/src/core/state/base_state.dart';
// import 'package:fake_commerce/src/feature/post/posts/presentation/bloc/post_bloc.dart';
// import 'package:fake_commerce/src/feature/post/posts/presentation/widget/post_list_builder.dart';
// import 'package:fake_commerce/src/feature/post/posts/presentation/widget/post_loading_shimmer.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class PostPage extends StatefulWidget {
//   const PostPage({Key? key}) : super(key: key);
//
//   @override
//   State<PostPage> createState() => _PostPageState();
// }
//
// class _PostPageState extends State<PostPage> {
//   @override
//   void initState() {
//     super.initState();
//     context.read<PostBloc>().add(AllPostFetchedEvent());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Posts'),
//         centerTitle: true,
//       ),
//       body: BlocConsumer<PostBloc, BaseState>(
//         listener: (context, state) {
//           if (state is ErrorState) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(
//                 content: Text('Couldn\'t load posts!'),
//               ),
//             );
//           }
//         },
//         builder: (context, state) {
//           if (state is LoadingState) {
//             return const PostsLoadingShimmer();
//           } else if (state is SuccessState) {
//             return RefreshIndicator(
//               onRefresh: () async {
//                 context.read<PostBloc>().add(AllPostFetchedEvent());
//               },
//               child: PostListBuilder(
//                 posts: state.data,
//               ),
//             );
//           }
//           return const Text('error');
//         },
//       ),
//     );
//   }
// }

import 'package:fake_commerce/src/core/router/routers.dart';
import 'package:fake_commerce/src/core/state/base_state.dart';
import 'package:fake_commerce/src/feature/post/posts/presentation/riverpod/providers.dart';
import 'package:fake_commerce/src/feature/post/posts/presentation/widget/post_list_builder.dart';
import 'package:fake_commerce/src/feature/post/posts/presentation/widget/post_loading_shimmer.dart';
import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PostPage extends ConsumerStatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  ConsumerState<PostPage> createState() => _PostPageState();
}

class _PostPageState extends ConsumerState<PostPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(postsProvider.notifier).postList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(postsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.goNamed(
              Routes.home.name,
            );
          },
        ),
      ),
      body: Column(
        children: [
          state is LoadingState
              ? const Expanded(child: PostsLoadingShimmer())
              : state is SuccessState<List<PostModel>>
                  ? Expanded(
                      child: RefreshIndicator(
                          onRefresh: () async {
                            await ref.read(postsProvider.notifier).postList();
                          },
                          child: PostListBuilder(
                            posts: state.data!,
                          )),
                    )
                  : const Center(child: Text('Error')),
        ],
      ),
    );
  }
}
