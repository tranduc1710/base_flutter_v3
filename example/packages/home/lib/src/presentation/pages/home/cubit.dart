import 'package:bloc/bloc.dart';

import 'state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(count: 0));

  void upCount() {
    emit(HomeState(count: state.count + 1));
  }

  void downCount() {
    emit(HomeState(count: state.count - 1));
  }
}
