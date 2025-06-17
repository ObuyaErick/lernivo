import 'package:flutter/material.dart';

class AppTextFieldMaterial extends StatelessWidget {
  const AppTextFieldMaterial({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: Theme.of(
            context,
          ).colorScheme.onSurface.withValues(alpha: 0.3), // Color of the border
          width: 1.0, // Thickness of the border
        ),
      ),
      elevation: 0.2,
      child: child,
    );
  }
}
