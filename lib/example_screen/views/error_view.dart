part of "../example_screen_view.dart";

class _ErrorView extends StatelessWidget {
  const _ErrorView();

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Состояние ошибки"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.read<ExampleBloc>().add(ExampleEventImpl()),
              child: const Center(
                child: Text("Далее"),
              ),
            ),
          ],
        ),
      );
}
