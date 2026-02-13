import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({
    super.key, required this.price,
  });
final num price;
  @override
  Widget build(BuildContext context) {
    return Text(
      '${price} EGP ',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }
}
