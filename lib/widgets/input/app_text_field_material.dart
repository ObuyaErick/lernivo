import 'package:flutter/material.dart';

class AppTextFieldMaterial extends StatelessWidget {
  const AppTextFieldMaterial({super.key, this.borderRadius, this.child});

  final Widget? child;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
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
