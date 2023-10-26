// import 'package:equatable/equatable.dart';
// import 'package:fake_commerce/src/core/state/base_state.dart';
// import 'package:fake_commerce/src/feature/post/details/domain/use_cases/post_details_use_case.dart';
// import 'package:fake_commerce/src/feature/post/posts/domain/use_cases/posts_use_case.dart';
// import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// part 'post_event.dart';
// part 'post_state.dart';
//
// class PostBloc extends Bloc<PostEvent, BaseState> {
//   PostBloc({required this.postsUseCase}) : super(InitialState()) {
//     on<AllPostFetchedEvent>(_onPostFetchedEvent);
//   }
//
//   final PostsUseCase postsUseCase;
//
//   Future<void> _onPostFetchedEvent(
//     AllPostFetchedEvent event,
//     Emitter<BaseState> emit,
//   ) async {
//     emit(const LoadingState());
//     try {
//       final response = await postsUseCase.postList();
//
//       response.fold(
//         (l) => emit(
//           ErrorState(
//             data: l.toString(),
//           ),
//         ),
//         (r) => emit(
//           SuccessState(
//             data: r,
//           ),
//         ),
//       );
//     } catch (e) {
//       emit(
//         ErrorState(
//           data: e.toString(),
//         ),
//       );
//     }
//   }
// }
//
// class PostDetailsBloc extends Bloc<PostEvent, BaseState> {
//   PostDetailsBloc({required this.postDetailsUseCase}) : super(InitialState()) {
//     on<SinglePostFetchedEvent>(_onSinglePostFetchedEvent);
//   }
//
//   final PostDetailsUseCase postDetailsUseCase;
//
//   Future<void> _onSinglePostFetchedEvent(
//     SinglePostFetchedEvent event,
//     Emitter<BaseState> emit,
//   ) async {
//     emit(const LoadingState());
//     try {
//       final response = await postDetailsUseCase.post(event.id);
//
//       response.fold(
//         (l) => emit(
//           ErrorState(
//             data: l.toString(),
//           ),
//         ),
//         (r) => emit(
//           SuccessState(
//             data: r,
//           ),
//         ),
//       );
//     } catch (e) {
//       emit(
//         ErrorState(
//           data: e.toString(),
//         ),
//       );
//     }
//   }
// }
