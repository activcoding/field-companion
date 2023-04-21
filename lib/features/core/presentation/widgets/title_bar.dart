import 'dart:ui';

import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final String? title;
  final Widget? trailing;
  final String? backNavigationText;

  const TitleBar({
    super.key,
    this.title,
    this.trailing,
    this.backNavigationText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(left: 16.0, top: 26, right: 16, bottom: 12),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title!,
              style: const TextStyle(
                fontFamily: "Heebo",
                fontSize: 30,
                fontVariations: [
                  FontVariation("wght", 500),
                ],
                letterSpacing: 0.4,
              ),
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}
