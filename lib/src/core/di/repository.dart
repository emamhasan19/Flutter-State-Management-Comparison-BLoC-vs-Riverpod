part of 'injection_container.dart';

Future<void> _initRepositories() async {
  sl.registerLazySingleton<PostRepository>(
    () => PostRepositoryImpl(
      dataSource: sl.call(),
    ),
  );

  // sl.registerLazySingleton<SignUpRepository>(
  //   () => SignUpRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ForgotPasswordRepository>(
  //   () => ForgotPasswordRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<IdentityVerificationRepository>(
  //   () => IdentityVerificationRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton<ResendOtpRepository>(
  //   () => ResendOtpRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton<SetNewPasswordRepository>(
  //   () => SetNewPasswordRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ChangePasswordRepository>(
  //   () => ChangePasswordRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ProfileRepository>(
  //   () => ProfileRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<LogOutRepository>(
  //   () => LogOutRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton<UserRepository>(
  //   () => UserRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<SettingsRepository>(
  //   () => SettingsRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ConversationsRepository>(
  //   () => ConversationsRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ActiveUsersRepository>(
  //   () => ActiveUsersRepositoryImp(
  //     dataSource: sl.call(),
  //   ),
  // );
}
