import 'bloc/example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'views/error_view.dart';
part 'views/loading_view.dart';
part 'views/success_view.dart';

class ExampleScreenView extends StatelessWidget {
  const ExampleScreenView({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: BlocBuilder<ExampleBloc, ExampleState>(
            builder: (_, state) => switch (state) {
              SuccessState() => const _SuccessView(),
              ErrorState() => const _ErrorView(),
              LoadingState() => const _LoadingView(),
            },
          ),
        ),
      );
}
