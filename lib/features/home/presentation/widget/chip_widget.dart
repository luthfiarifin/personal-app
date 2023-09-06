import 'package:flutter/material.dart';
import 'package:personal_app/core/presentation/extensions/build_context_extension.dart';

class ChipWidget extends StatelessWidget {
  final String text;

  const ChipWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        color: context.isDarkMode ? Colors.grey.shade600 : Colors.grey.shade300,
      ),
      child: Text(
        text,
        style: context.bodySmall,
      ),
    );
  }
}
