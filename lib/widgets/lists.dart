import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  late String data;

  Lists(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        left: 10,
      ),
      child: Row(
        children: [
          const Icon(Icons.check),
          Text(
            data,
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
