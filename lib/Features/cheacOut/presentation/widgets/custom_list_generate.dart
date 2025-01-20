import 'package:flutter/material.dart';

class CustomListGenerate extends StatelessWidget {
  const CustomListGenerate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        20,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(
              height: 2,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
