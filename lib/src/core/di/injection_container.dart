import 'package:fake_commerce/src/feature/post/details/domain/use_cases/post_details_use_case.dart';
import 'package:fake_commerce/src/feature/post/posts/domain/use_cases/posts_use_case.dart';
import 'package:fake_commerce/src/feature/post/posts/presentation/bloc/post_bloc.dart';
import 'package:fake_commerce/src/feature/post/root/data/data_sources/post_data_source.dart';
import 'package:fake_commerce/src/feature/post/root/data/data_sources/post_data_source_imp.dart';
import 'package:fake_commerce/src/feature/post/root/data/repositories/post_repository_imp.dart';
import 'package:fake_commerce/src/feature/post/root/domain/repositories/post_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:network/network.dart';

part 'bloc.dart';
part 'data_source.dart';
part 'repository.dart';
part 'use_case.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// Bloc
  await _initBlocs();

  /// Use Case
  await _initUseCases();

  /// Repository
  await _initRepositories();

  /// Datasource
  await _initDataSources();

  /// Externals
  ///
  final restClient = RestClient(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    token: '',
  );

  sl.registerLazySingleton(
    () => restClient,
  );

  // final restClient = RestClient(
  //   baseUrl: API.base,
  //   tokenCallBack: () async {
  //     return await CacheService.instance.retrieveBearerToken();
  //   },
  //   onUnAuthorizedError: logoutOnUnauthorizedError,
  // );

  // sl.registerLazySingleton(
  //   () => restClient,
  // );
  //
  // final deviceInfoService = DeviceInfoService();
  // sl.registerLazySingleton(
  //   () => deviceInfoService,
  // );
  //
  // final socketService = SocketService();
  // sl.registerLazySingleton(
  //   () => socketService,
  // );
}
