import 'package:flutter/material.dart';
import 'package:goldak/core/constants/app_images.dart';
import 'package:goldak/core/widgets/view_body.dart';

class GoldView extends StatelessWidget {
  const GoldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Gold Price',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: ViewBody(image: AppImages.goldImage, price: 2000),
    );
  }
}
