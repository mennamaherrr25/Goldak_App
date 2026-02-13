import 'package:flutter/material.dart';

import 'package:goldak/core/widgets/price.dart';

class ViewBody extends StatelessWidget {
  const ViewBody({super.key, required this.image, required this.price});
 final String image;
 final num price;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset(image), Price(price: price,)],
      ),
    );
  }
}
