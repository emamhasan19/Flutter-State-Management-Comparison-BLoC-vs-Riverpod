//in bloc
// import 'package:fake_commerce/src/core/bloc_provider/global_bloc_providers.dart';
// import 'package:fake_commerce/src/core/di/injection_container.dart' as di;
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import 'src/core/router/router_config.dart';
//
// void main() async {
//   await di.init();
//   runApp(const MyApp());
// }
//
// class MyApp extends ConsumerWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context, ref) {
//     return MultiBlocProvider(
//       providers: GlobalBlocProviders().providers,
//       child: MaterialApp.router(
//         debugShowCheckedModeBanner: false,
//         title: 'Person Riverpod',
//         routerConfig: router,
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//       ),
//     );
//   }
// }

//in riverpod

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/core/router/router_config.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp.router(
      title: 'Person Riverpod',
      routerConfig: ref.read(goRouterProvider),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
