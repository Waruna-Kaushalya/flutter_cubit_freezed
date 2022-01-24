import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concepts/utility/constants/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_state.dart';
part 'internet_cubit.freezed.dart';

class InternetCubit extends Cubit<InternetState> {
  // final Connectivity connectivity = Connectivity();

  //?connectivity_plus plugin dependency and pasing it
  //?required parramerter as constructor
  final Connectivity connectivity;

  //? You can also listen for network state changes by subscribing to the stream exposed by connectivity plugin
  //? Be sure to cancel subscription after you are done
  late StreamSubscription connectivityStreamSubscription;

  InternetCubit({required this.connectivity}) : super(const InternetLoading()) {
    //? Got a new connectivity status!
    connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.wifi) {
        emitInternetConnectedWiFi(ConnectionType.wifi);
      } else if (connectivityResult == ConnectivityResult.mobile) {
        emitInternetConnectedMobile(ConnectionType.mobile);
      } else if (connectivityResult == ConnectivityResult.none) {
        emitInternetDisconnected();
      }
    });
  }

  void emitInternetConnectedWiFi(ConnectionType connectionType) =>
      emit(const InternetConnectedWiFi());

  void emitInternetConnectedMobile(ConnectionType connectionType) =>
      emit(const InternetConnectedMobile());

  void emitInternetDisconnected() => emit(const InternetDisconnected());

  //?Be sure to cancel subscription after you are done
  @override
  Future<void> close() {
    connectivityStreamSubscription.cancel();
    return super.close();
  }
}
