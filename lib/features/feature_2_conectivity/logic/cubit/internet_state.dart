part of 'internet_cubit.dart';

@immutable
abstract class InternetState extends Equatable {}

class InternetLoading extends InternetState {
  @override
  List<Object?> get props => [];
}

class InternetConnected extends InternetState {
  final ConnectionType connectionType;

  InternetConnected({required this.connectionType});

  @override
  String toString() => 'InternetConnected(connectionType: $connectionType)';

  @override
  List<Object?> get props => [connectionType];
}

class InternetDisconnected extends InternetState {
  @override
  List<Object?> get props => [];
}

// import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:flutter_bloc_concepts/utility/constants/enums.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'internet_state.freezed.dart';

// part of 'internet_cubit.dart';

// @freezed
// abstract class InternetState with _$InternetState {
//   const factory InternetState.netLoading() = InternetLoading;
//   const factory InternetState.netConnectedMobile() = InternetConnectedMobile;
//   const factory InternetState.netConnectedWiFi() = InternetConnectedWiFi;
//   const factory InternetState.netDisconnected() = InternetDisconnected;
// }
