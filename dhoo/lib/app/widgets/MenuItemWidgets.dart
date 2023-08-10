import 'package:flutter/material.dart';

import '../shared/theme.dart';

class MenuItemWidgets extends StatelessWidget {
  final String? image;
  final String? label;
  const MenuItemWidgets({
    Key? key,
    required this.image,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundBlue,
          ),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/$image'), scale: 1.5)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          // ignore: unnecessary_brace_in_string_interps
          '${label}',
          style: regular.copyWith(fontSize: 12),
        )
      ],
    );
  }
}
