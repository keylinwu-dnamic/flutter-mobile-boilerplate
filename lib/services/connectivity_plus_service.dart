// import 'dart:async';
// import 'dart:developer';
//
// import 'package:boilerplate/services/connectivity_service.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/services.dart';
//
// class ConnectivityPlusService implements ConnectivityServiceInterface {
//   ConnectivityResult _connectionStatus = ConnectivityResult.none;
//   final Connectivity _connectivity;
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;
//
//   ConnectivityPlusService({Connectivity? connectivity})
//       : _connectivity = connectivity ?? Connectivity();
//
//   @override
//   Future<bool> checkInternetConnection() {
//     // TODO: implement checkInternetConnection
//     throw UnimplementedError();
//   }
//
//   Future<void> initConnectivity() async {
//     late ConnectivityResult result;
//     try {
//       result = await _connectivity.checkConnectivity();
//     } on PlatformException catch (e) {
//       log('Couldn\'t check connectivity status', error: e);
//       return;
//     }
//     return _updateConnectionStatus(result);
//   }
//
//   Future<void> _updateConnectionStatus(ConnectivityResult result) async {
//     _connectionStatus = result;
//   }
//
//   @override
//   // TODO: implement connectionStatusStream
//   Stream<ConnectivityStatus?> get connectionStatusStream =>
//       throw UnimplementedError();
//
//   @override
//   Future<void> getConnectionStatus() {
//     // TODO: implement getConnectionStatus
//     throw UnimplementedError();
//   }
//
//   @override
//   ConnectivityStatus? get status => _status;
//   ConnectivityStatus? _status;
//
//   @override
//   bool get isOffline =>
//       _status == null || _status == ConnectivityStatus.offline;
//
//   @override
//   bool get hasConnectivity => !isOffline;
// }
//
// extension ConnectivityStatusPlusExtension on ConnectivityStatus {
//   ConnectivityStatus parseConnectivityResult(
//       {required ConnectivityResult withResult}) {
//     switch (withResult) {
//       case ConnectivityResult.none:
//         return ConnectivityStatus.offline;
//       case ConnectivityResult.ethernet:
//         return ConnectivityStatus.offline;
//       case ConnectivityResult.mobile:
//         return ConnectivityStatus.cellular;
//       case ConnectivityResult.wifi:
//         return ConnectivityStatus.wifi;
//       case ConnectivityResult.bluetooth:
//         return ConnectivityStatus.offline;
//     }
//   }
// }
// import 'dart:async';
// import 'dart:developer';
//
// import 'package:boilerplate/services/connectivity_service.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/services.dart';
//
// class ConnectivityPlusService implements ConnectivityServiceInterface {
//   ConnectivityResult _connectionStatus = ConnectivityResult.none;
//   final Connectivity _connectivity;
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;
//
//   ConnectivityPlusService({Connectivity? connectivity})
//       : _connectivity = connectivity ?? Connectivity();
//
//   @override
//   Future<bool> checkInternetConnection() {
//     // TODO: implement checkInternetConnection
//     throw UnimplementedError();
//   }
//
//   Future<void> initConnectivity() async {
//     late ConnectivityResult result;
//     try {
//       result = await _connectivity.checkConnectivity();
//     } on PlatformException catch (e) {
//       log('Couldn\'t check connectivity status', error: e);
//       return;
//     }
//     return _updateConnectionStatus(result);
//   }
//
//   Future<void> _updateConnectionStatus(ConnectivityResult result) async {
//     _connectionStatus = result;
//   }
//
//   @override
//   // TODO: implement connectionStatusStream
//   Stream<ConnectivityStatus?> get connectionStatusStream =>
//       throw UnimplementedError();
//
//   @override
//   Future<void> getConnectionStatus() {
//     // TODO: implement getConnectionStatus
//     throw UnimplementedError();
//   }
//
//   @override
//   ConnectivityStatus? get status => _status;
//   ConnectivityStatus? _status;
//
//   @override
//   bool get isOffline =>
//       _status == null || _status == ConnectivityStatus.offline;
//
//   @override
//   bool get hasConnectivity => !isOffline;
// }
//
// extension ConnectivityStatusPlusExtension on ConnectivityStatus {
//   ConnectivityStatus parseConnectivityResult(
//       {required ConnectivityResult withResult}) {
//     switch (withResult) {
//       case ConnectivityResult.none:
//         return ConnectivityStatus.offline;
//       case ConnectivityResult.ethernet:
//         return ConnectivityStatus.offline;
//       case ConnectivityResult.mobile:
//         return ConnectivityStatus.cellular;
//       case ConnectivityResult.wifi:
//         return ConnectivityStatus.wifi;
//       case ConnectivityResult.bluetooth:
//         return ConnectivityStatus.offline;
//     }
//   }
// }
