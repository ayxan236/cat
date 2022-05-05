part of '../home_page.dart';

class ButtonsWidget extends StatelessWidget {
  final VoidCallback? onListTap;
  final VoidCallback? onReset;

  const ButtonsWidget({
    Key? key,
    this.onListTap,
    this.onReset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child:
                ElevatedButton(onPressed: onListTap, child: const Text("All"))),
        const SizedBox(
          width: 5,
        ),
        Expanded(
            child:
                ElevatedButton(onPressed: onReset, child: const Text("Reset")))
      ],
    );
  }
}
