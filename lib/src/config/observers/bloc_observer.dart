// ignore_for_file: strict_raw_type

import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log('${bloc.runtimeType} $event', name: 'onEvent');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('${bloc.runtimeType} $change', name: 'onChange');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('${bloc.runtimeType} $transition', name: 'onTransition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('${bloc.runtimeType} $error $stackTrace', name: 'onError');
    super.onError(bloc, error, stackTrace);
  }
}
