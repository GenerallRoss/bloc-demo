part of 'example_bloc.dart';

sealed class ExampleEvent extends Equatable {
  const ExampleEvent();
}

/// Описание ивента
class ExampleEventImpl extends ExampleEvent {
  @override
  List<Object?> get props => [];
}
