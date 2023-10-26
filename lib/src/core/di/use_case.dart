part of 'injection_container.dart';

Future<void> _initUseCases() async {
  sl.registerLazySingleton(
    () => PostsUseCase(
      sl.call(),
    ),
  );

  sl.registerLazySingleton(
    () => PostDetailsUseCase(
      sl.call(),
    ),
  );

  // sl.registerLazySingleton(
  //   () => SignUpUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => ForgotPasswordUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => IdentityVerificationUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton(
  //   () => ResendOtpUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton(
  //   () => SetNewPasswordUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => ChangePasswordUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => UpdateProfileUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton(
  //   () => HomeUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => LogOutUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => SearchUserUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => UpdateNotificationPreferenceUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => GetAllConversationUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => GetMessageHistoryUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton(
  //   () => ActiveUsersUseCase(
  //     repository: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton(
  //   () => FriendProfileUseCase(
  //     repository: sl.call(),
  //   ),
  // );
}
