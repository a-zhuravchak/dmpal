import 'package:flutter/material.dart';

import '../../../../../app/theme/text_theme.dart';

class CollectionEmptyWidget extends StatelessWidget {
  const CollectionEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Wow, so empty in here',
          style: bubbleTextStyle(theme.colorScheme),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Login with BGG to see your collection or just start adding now',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.tertiary),
          ),
        ),
      ],
    );
  }
}
