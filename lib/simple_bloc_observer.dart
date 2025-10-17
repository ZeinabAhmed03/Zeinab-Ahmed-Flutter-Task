import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onClose(BlocBase bloc) {
    log('close: $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    log('create: $bloc');
  }

  @override
  void onDone(
    Bloc bloc,
    Object? event, [
    Object? error,
    StackTrace? stackTrace,
  ]) {}

  @override
  void onChange(BlocBase bloc, Change change) {
    log('change: $change, bloc: $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log('event: $bloc');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
