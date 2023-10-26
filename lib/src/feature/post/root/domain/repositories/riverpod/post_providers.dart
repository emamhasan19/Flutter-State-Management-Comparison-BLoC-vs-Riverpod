// // // Import the necessary package
// // import 'package:flutter/material.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';
// //
// // // Define a provider for the counter
// // final counterProvider = StateProvider<int, int>((ref) => 0);
// //
// // void main() {
// //   runApp(
// //     ProviderScope(
// //       child: MyApp(),
// //     ),
// //   );
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Riverpod Counter'),
// //         ),
// //         body: Center(
// //           child: Consumer(
// //             builder: (context, watch, child) {
// //               final counter = ref.watch(counterProvider);
// //               return Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text('Counter Value: ${counter.state}'),
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       counter.state++;
// //                     },
// //                     child: Text('Increment'),
// //                   ),
// //                 ],
// //               );
// //             },
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// // Import the necessary packages
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// // Define the events for the counter BLoC
// enum CounterEvent { increment }
//
// // Define the state for the counter BLoC
// class CounterState {
//   final int value;
//   CounterState(this.value);
// }
//
// // Define the counter BLoC
// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   CounterBloc() : super(CounterState(0));
//
//   @override
//   Stream<CounterState> mapEventToState(CounterEvent event) async* {
//     if (event == CounterEvent.increment) {
//       // Increment the counter
//       yield CounterState(state.value + 1);
//     }
//   }
// }
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   final CounterBloc _counterBloc = CounterBloc();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlocProvider(
//         create: (context) => _counterBloc,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('BLoC Counter'),
//           ),
//           body: Center(
//             child: BlocBuilder<CounterBloc, CounterState>(
//               builder: (context, state) {
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('Counter Value: ${state.value}'),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Dispatch the increment event
//                         _counterBloc.add(CounterEvent.increment);
//                       },
//                       child: Text('Increment'),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _counterBloc.close();
//     super.dispose();
//   }
// }
