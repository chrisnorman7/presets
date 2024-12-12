import 'package:backstreets_widgets/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../screens/text_list_screen.dart';

/// A list tile which allows showing [presets].
class PresetsListTile extends StatelessWidget {
  /// Create an instance.
  const PresetsListTile({
    required this.title,
    required this.presets,
    super.key,
  });

  /// The title of the [ListTile] and the [TextListScreen].
  final String title;

  /// The presets to use.
  final List<String> presets;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => Semantics(
        customSemanticsActions: {
          for (var i = 0; i < presets.length; i++)
            CustomSemanticsAction(label: '$i: ${presets[i]}'): () {},
        },
        child: ListTile(
          title: Text(title),
          onTap: () => context.pushWidgetBuilder(
            (final _) => TextListScreen(title: title, items: presets),
          ),
        ),
      );
}
