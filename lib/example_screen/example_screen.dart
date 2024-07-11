import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/example_bloc.dart';
import 'package:flutter/material.dart';

import 'example_screen_view.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<ExampleBloc>(
        create: (_) => ExampleBloc(),
        child: const ExampleScreenView(),
      );
}
