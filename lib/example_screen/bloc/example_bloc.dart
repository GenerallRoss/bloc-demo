import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(const SuccessState()) {
    on<ExampleEvent>(_onExampleEvent);
  }

  Future<void> _onExampleEvent(ExampleEvent event, Emitter<ExampleState> emit) async {
    final newState = switch (state) {
      SuccessState() => const ErrorState(),
      ErrorState() => const LoadingState(),
      LoadingState() => const SuccessState(),
    };
    emit(newState);
  }
}
