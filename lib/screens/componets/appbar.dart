import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_left,
              color: kblue,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
            ))
      ],
    );
  }
}
