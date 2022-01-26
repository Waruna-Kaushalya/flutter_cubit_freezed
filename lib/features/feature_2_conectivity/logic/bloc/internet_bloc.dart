// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// // 
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'internet_bloc.freezed.dart';
// part 'internet_event.dart';
// part 'internet_state.dart';

// class InternetBloc extends Bloc<InternetEvent, InternetState> {
//   //?connectivity_plus plugin dependency and pasing it
//   //?required parramerter as constructor
//   final Connectivity connectivity;

//   //? You can also listen for network state changes by subscribing to the stream exposed by connectivity plugin
//   //? Be sure to cancel subscription after you are done
//   late StreamSubscription connectivityStreamSubscription;

//   InternetBloc({
//     required this.connectivity,
//   } // this.connectivityStreamSubscription,
//       ) : super(const InternetLoading()) {
//     on<InternetEvent>((event, emit) {
//       if (event is ListenConnection) {
//         connectivityStreamSubscription =
//             connectivity.onConnectivityChanged.listen((connectivityResult) {
//           if (connectivityResult == ConnectivityResult.wifi) {
//             // emitInternetConnectedWiFi(ConnectionType.wifi);
//             emit(const InternetConnectedWiFi());
//           } else if (connectivityResult == ConnectivityResult.mobile) {
//             // emitInternetConnectedMobile(ConnectionType.mobile);
//             emit(const InternetConnectedMobile());
//           } else if (connectivityResult == ConnectivityResult.none) {
//             // emitInternetDisconnected();
//             emit(const InternetDisconnected());
//           }
//         });
//         add(const ConnectionChanged());
//       }
//       if (event is ConnectionChanged) {}
//     });
//   }

//   @override
//   Future<void> close() {
//     connectivityStreamSubscription.cancel();
//     return super.close();
//   }
// }
