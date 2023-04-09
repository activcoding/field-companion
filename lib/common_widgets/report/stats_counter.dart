import 'package:field_companion/color_palette.dart';
import 'package:flutter/material.dart';

class StatsCounter extends StatelessWidget {
  const StatsCounter({super.key, required this.amount, required this.icon});

  final int amount;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 110,
        height: 40,
        decoration: BoxDecoration(
          color: ColorPalette.grey2Opacity20,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: icon,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  amount.toString(),
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Heebo',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
