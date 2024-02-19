import 'dart:async';

import 'package:bloc/bloc.dart';

import 'event.dart';
import 'state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState().init()) {
    on<InitEvent>(_init);
    on<UpCountEvent>(_upCount);
    on<DownCountEvent>(_downCount);
  }

  void _init(InitEvent event, Emitter<LoginState> emit) async {
    emit(state.clone());
  }

  FutureOr<void> _upCount(UpCountEvent event, Emitter<LoginState> emit) {
    final newState = LoginState(count: state.count + 1);
    emit(state.clone());
  }

  FutureOr<void> _downCount(DownCountEvent event, Emitter<LoginState> emit) {
    final newState = LoginState(count: state.count - 1);
    emit(newState);
  }
}
