part of 'example_bloc.dart';

sealed class ExampleState extends Equatable {
  const ExampleState();
}

class SuccessState extends ExampleState {
  const SuccessState();

  @override
  List<Object> get props => [];
}

class ErrorState extends ExampleState {
  const ErrorState();

  @override
  List<Object> get props => [];
}

class LoadingState extends ExampleState {
  const LoadingState();

  @override
  List<Object> get props => [];
}
