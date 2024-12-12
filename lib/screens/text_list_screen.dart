import 'package:backstreets_widgets/extensions.dart';
import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A screen which shows a [items] as a [ListView].
class TextListScreen extends StatelessWidget {
  /// Create an instance.
  const TextListScreen({
    required this.title,
    required this.items,
    super.key,
  });

  /// The title of this widget.
  final String title;

  /// The items to show.
  final List<String> items;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => Cancel(
        child: SimpleScaffold(
          title: title,
          body: ListView.builder(
            itemBuilder: (final context, final index) {
              final item = items[index];
              return ListTile(
                title: Text('$index: $item'),
                onTap: item.copyToClipboard,
                autofocus: index == 0,
              );
            },
            itemCount: items.length,
            shrinkWrap: true,
          ),
        ),
      );
}
