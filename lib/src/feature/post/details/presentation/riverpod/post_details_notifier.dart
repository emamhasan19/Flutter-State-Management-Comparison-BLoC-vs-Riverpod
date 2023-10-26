import 'dart:developer';

import 'package:fake_commerce/src/feature/post/details/domain/use_cases/post_details_use_case.dart';
import 'package:fake_commerce/src/feature/post/root/data/models/post_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postDetailsProvider = FutureProvider.autoDispose.family<PostModel?, int>(
  (ref, value) async {
    try {
      final result = await ref.read(postDetailsUseCaseProvider).post(value);

      return result.fold(
        (l) => null,
        (r) {
          ref.keepAlive();
          return r;
        },
      );
    } catch (e, stackTrace) {
      log(
        'postDetailsProvider.futureProvider',
        error: e,
        stackTrace: stackTrace,
      );
    }

    return null;
  },
);

// final postDetailsProvider = FutureProvider.autoDispose.family<PostModel?, int>(
//   (ref, value) async {
//     try {
//       final result = await ref.read(postDetailsUseCaseProvider).post(value);
//
//       return result.fold(
//         (l) => null,
//         (r) {
//           ref.keepAlive();
//           return r;
//         },
//       );
//     } catch (e, stackTrace) {
//       log(
//         'postDetailsProvider.futureProvider',
//         error: e,
//         stackTrace: stackTrace,
//       );
//     }
//
//     return null;
//   },
// );
