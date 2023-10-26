part of 'injection_container.dart';

Future<void> _initDataSources() async {
  sl.registerLazySingleton<PostDataSource>(
    () => PostDataSourceImpl(
      client: sl.call(),
    ),
  );

  // sl.registerLazySingleton<SignUpDataSource>(
  //   () => SignUpDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ForgotPasswordDataSource>(
  //   () => ForgotPasswordDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<IdentityVerificationDataSource>(
  //   () => IdentityVerificationDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton<ResendOtpDataSource>(
  //   () => ResendOtpDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton<SetNewPasswordDataSource>(
  //   () => SetNewPasswordDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ChangePasswordDataSource>(
  //   () => ChangePasswordDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ProfileDataSource>(
  //   () => ProfileDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<LogOutDataSource>(
  //   () => LogOutDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<UserDataSource>(
  //   () => UserDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<SettingsDataSource>(
  //   () => SettingsDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ConversationsDataSource>(
  //   () => ConversationsDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ActiveUsersDataSource>(
  //   () => ActiveUsersDataSourceImp(
  //     restClient: sl.call(),
  //   ),
  // );
}
