import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'select_city_event.dart';
part 'select_city_state.dart';

class SelectCityBloc extends Bloc<SelectCityEvent, SelectCityState> {
  SelectCityBloc() : super(SelectCityInitial()) {
    on<SelectCityEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
